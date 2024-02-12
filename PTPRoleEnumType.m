classdef PTPRoleEnumType < Simulink.IntEnumType
    % PTPRoleEnumType Enumeration type definition for use with System Composer profile

    enumeration
        Not_Activated(0)
        Slave(1)
        Master(2)
        GrandMaster(3)
    end

end
