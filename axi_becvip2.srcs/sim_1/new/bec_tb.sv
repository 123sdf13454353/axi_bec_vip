`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/17/2024 09:38:07 PM
// Design Name: 
// Module Name: bec_vip_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
import axi_vip_pkg::*;
import axi_becvip2_axi_vip_0_0_pkg::*;

module bec_tb( );

    int file1; 
    int count_r = 0;
    bit aclk = 0; 
    bit aresetn = 0;

    xil_axi_ulong base_addr         = 32'hC000_0000; 
    xil_axi_ulong enable_addr       = base_addr; 
    xil_axi_ulong key_addr          = base_addr + 4; 
    xil_axi_ulong next_k_addr       = base_addr + 8;
    xil_axi_ulong wout_addr         = base_addr + 12; 
    xil_axi_ulong zout_addr         = base_addr + 16; 
    xil_axi_ulong done_addr         = base_addr + 20; 
    xil_axi_ulong write_key_addr    = base_addr + 24; 
    xil_axi_ulong read_result_addr  = base_addr + 28;
    
    bit [162:0] key;
    bit [31:0] key1; 
    bit [31:0] key2; 
    bit [31:0] data_wout1, data_wout2, data_wout3, data_wout4, data_wout5, data_wout6;
    bit [162:0] data_wout, data_zout; 
    bit [31:0] data_zout1, data_zout2, data_zout3, data_zout4, data_zout5, data_zout6;
    bit [31:0] write_key, read_result;
    bit [31:0] data_done; 
    bit [31:0] enable = 32'h0000_0001; 
    bit [31:0] not_enable = 32'h0000_0000; 
    bit [31:0] en_resp;   
    xil_axi_resp_t resp;
    xil_axi_prot_t prot = 0;
    
    always #5ns aclk = ~aclk; 
    
    axi_becvip2_wrapper DUT (.aclk0(aclk), .aresetn(aresetn)); 
    axi_becvip2_axi_vip_0_0_mst_t master_agent; 

    // Task to read from write_key_addr and read_result_addr
    task read_key_and_result;
    begin
        @(posedge aclk);
        master_agent.AXI4LITE_READ_BURST(write_key_addr, prot, write_key, resp);
        @(posedge aclk);
        master_agent.AXI4LITE_READ_BURST(read_result_addr, prot, read_result, resp);
        #10ns;  // Optional delay between reads
    end
    endtask
    
    initial begin 
        master_agent = new("master vip agent", DUT.axi_becvip2_i.axi_vip_0.inst.IF);
        master_agent.set_agent_tag("Master VIP"); 
        master_agent.set_verbosity(400); 
        master_agent.start_master(); 
        
        #20ns
        $display("start");  
        @(posedge aclk);
        aresetn = 0;

        #200ns 
        aresetn = 1;
        
        // Load key from file
        file1 = $fopen ("D:/Semicon/sm_bec.txt", "r");
        if(file1) $display("Open key file successfully");

        while (!$feof(file1)) begin 
            @(posedge aclk)
            $display("reading file"); 
            $fscanf(file1, "%x", key);
        end 
        $fclose(file1);
        $display("key:", key);
   
        #10ns 
        master_agent.AXI4LITE_WRITE_BURST(enable_addr, prot, enable, resp);
        $display("Enable IP successfully");
        
        #10ns 
        master_agent.AXI4LITE_WRITE_BURST(key_addr, prot, key[31:0], resp);
        $display("write key");
        
        #10ns 
        master_agent.AXI4LITE_WRITE_BURST(key_addr, prot, key[63:32], resp);
        $display("writing key");
        
        #10ns 
        master_agent.AXI4LITE_WRITE_BURST(key_addr, prot, key[95:64], resp);
        $display("writing key");
        
        #10ns 
        master_agent.AXI4LITE_WRITE_BURST(key_addr, prot, key[127:96], resp);
        $display("writing key");
        
        #10ns 
        master_agent.AXI4LITE_WRITE_BURST(key_addr, prot, key[159:128], resp);
        $display("writing key");
        
        #10ns 
        master_agent.AXI4LITE_WRITE_BURST(key_addr, prot, key[162:160], resp);
        $display("done writing key");

        // Wait for done signal
        while (1) begin
            @(posedge aclk);
            master_agent.AXI4LITE_READ_BURST(done_addr, prot, data_done, resp);
            if (data_done == 32'h0000_0001) begin
                $display("done"); 
                break; 
            end 
        end  

        // Read WOUT data
        @(posedge aclk);
        master_agent.AXI4LITE_READ_BURST(wout_addr, prot, data_wout1, resp);
        count_r = count_r + 1;
        $display(data_wout1); 
        read_key_and_result();  // Call task to read key and result after each WOUT read
        
        @(posedge aclk);
        master_agent.AXI4LITE_READ_BURST(wout_addr, prot, data_wout2, resp);
        count_r = count_r + 1;
        $display(data_wout2); 
        read_key_and_result();
         
        @(posedge aclk);
        master_agent.AXI4LITE_READ_BURST(wout_addr, prot, data_wout3, resp);
        count_r = count_r + 1;
        $display(data_wout3); 
        read_key_and_result();
        
        @(posedge aclk);
        master_agent.AXI4LITE_READ_BURST(wout_addr, prot, data_wout4, resp);
        count_r = count_r + 1;
        $display(data_wout4); 
        read_key_and_result();
         
        @(posedge aclk);
        master_agent.AXI4LITE_READ_BURST(wout_addr, prot, data_wout5, resp);
        count_r = count_r + 1;
        $display(data_wout5); 
        read_key_and_result();
        
        @(posedge aclk);
        master_agent.AXI4LITE_READ_BURST(wout_addr, prot, data_wout6, resp);
        count_r = count_r + 1;
        $display(data_wout6); 
        read_key_and_result();
        
        data_wout = {data_wout6[2:0], data_wout5, data_wout4, data_wout3, data_wout2, data_wout1};
        
        // Read ZOUT data
        @(posedge aclk);
        master_agent.AXI4LITE_READ_BURST(zout_addr, prot, data_zout1, resp);
        count_r = count_r + 1;
        $display(data_zout1); 
        read_key_and_result();
        
        @(posedge aclk);
        master_agent.AXI4LITE_READ_BURST(zout_addr, prot, data_zout2, resp);
        count_r = count_r + 1;
        $display(data_zout2); 
        read_key_and_result();
         
        @(posedge aclk);
        master_agent.AXI4LITE_READ_BURST(zout_addr, prot, data_zout3, resp);
        count_r = count_r + 1;
        $display(data_zout3); 
        read_key_and_result();
        
        @(posedge aclk);
        master_agent.AXI4LITE_READ_BURST(zout_addr, prot, data_zout4, resp);
        count_r = count_r + 1;
        $display(data_zout4); 
        read_key_and_result();
         
        @(posedge aclk);
        master_agent.AXI4LITE_READ_BURST(zout_addr, prot, data_zout5, resp);
        count_r = count_r + 1;
        $display(data_zout5); 
        read_key_and_result();
        
        @(posedge aclk);
        master_agent.AXI4LITE_READ_BURST(zout_addr, prot, data_zout6, resp);
        count_r = count_r + 1;
        $display(data_zout6); 
        read_key_and_result();
        
        data_zout = {data_zout6[2:0], data_zout5, data_zout4, data_zout3, data_zout2, data_zout1};
        
        @(posedge aclk);
        forever begin       
             if (count_r == 12) begin 
                master_agent.AXI4LITE_WRITE_BURST(enable_addr, prot, not_enable, resp);
                break;
             end
         end 

        $display("finish");   
        $finish; 
    end 
endmodule
