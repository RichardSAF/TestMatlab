classdef PTPSupportEnumType < Simulink.IntEnumType
    % PTPSupportEnumType Enumeration type definition for use with System Composer profile

    enumeration
        NotSupported(0)
        HW_v1(1)
        SW_v1(2)
        HW_v2(3)
        SW_v2(4)        
    end

end
