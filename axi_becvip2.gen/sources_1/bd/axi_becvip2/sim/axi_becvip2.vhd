--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Fri Oct 18 17:41:53 2024
--Host        : MSI running 64-bit major release  (build 9200)
--Command     : generate_target axi_becvip2.bd
--Design      : axi_becvip2
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_becvip2 is
  port (
    aclk0 : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of axi_becvip2 : entity is "axi_becvip2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=axi_becvip2,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of axi_becvip2 : entity is "axi_becvip2.hwdef";
end axi_becvip2;

architecture STRUCTURE of axi_becvip2 is
  component axi_becvip2_axi_vip_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component axi_becvip2_axi_vip_0_0;
  component axi_becvip2_bec_ip_2_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  end component axi_becvip2_bec_ip_2_0_0;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal axi_vip_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_0_M_AXI_ARREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_ARVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_0_M_AXI_AWREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_AWVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_BREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_0_M_AXI_BVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_M_AXI_RREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_0_M_AXI_RVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_0_M_AXI_WREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_0_M_AXI_WVALID : STD_LOGIC;
begin
  Net <= aclk0;
  Net1 <= aresetn;
axi_vip_0: component axi_becvip2_axi_vip_0_0
     port map (
      aclk => Net,
      aresetn => Net1,
      m_axi_araddr(31 downto 0) => axi_vip_0_M_AXI_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => axi_vip_0_M_AXI_ARPROT(2 downto 0),
      m_axi_arready => axi_vip_0_M_AXI_ARREADY,
      m_axi_arvalid => axi_vip_0_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => axi_vip_0_M_AXI_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => axi_vip_0_M_AXI_AWPROT(2 downto 0),
      m_axi_awready => axi_vip_0_M_AXI_AWREADY,
      m_axi_awvalid => axi_vip_0_M_AXI_AWVALID,
      m_axi_bready => axi_vip_0_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_vip_0_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_vip_0_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => axi_vip_0_M_AXI_RDATA(31 downto 0),
      m_axi_rready => axi_vip_0_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_vip_0_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_vip_0_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => axi_vip_0_M_AXI_WDATA(31 downto 0),
      m_axi_wready => axi_vip_0_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => axi_vip_0_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => axi_vip_0_M_AXI_WVALID
    );
bec_ip_2_0: component axi_becvip2_bec_ip_2_0_0
     port map (
      s_axi_aclk => Net,
      s_axi_araddr(4 downto 0) => axi_vip_0_M_AXI_ARADDR(4 downto 0),
      s_axi_aresetn => Net1,
      s_axi_arprot(2 downto 0) => axi_vip_0_M_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_vip_0_M_AXI_ARREADY,
      s_axi_arvalid => axi_vip_0_M_AXI_ARVALID,
      s_axi_awaddr(4 downto 0) => axi_vip_0_M_AXI_AWADDR(4 downto 0),
      s_axi_awprot(2 downto 0) => axi_vip_0_M_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_vip_0_M_AXI_AWREADY,
      s_axi_awvalid => axi_vip_0_M_AXI_AWVALID,
      s_axi_bready => axi_vip_0_M_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_vip_0_M_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_vip_0_M_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_vip_0_M_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_vip_0_M_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_vip_0_M_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_vip_0_M_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_vip_0_M_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_vip_0_M_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_vip_0_M_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_vip_0_M_AXI_WVALID
    );
end STRUCTURE;
