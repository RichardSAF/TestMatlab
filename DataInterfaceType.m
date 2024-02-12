classdef DataInterfaceType < Simulink.IntEnumType
    % DataInterfaceType Enumeration type definition for use with System Composer profile

    enumeration
        DONT_KNOW(0)
        Eth_100BASET(1)
        Eth_100BASET1(2)
        Eth_1000BASET(3)
        Eth_1000BASET1(4)
        Eth_10GBASET(5)
        USB(6)
        RS232(7)
        RS422(8)
    end

end
