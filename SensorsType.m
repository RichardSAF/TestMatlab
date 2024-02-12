classdef SensorsType < Simulink.IntEnumType
    % SensorsType Enumeration type definition for use with System Composer profile

    enumeration
        VisibleCamera(0)
        SWIRCamera(1)
        LWIRCamera(2)
        Lidar(3)
        Radar(4)
        SensorSet(5)
        AHRS(6)
        WeatherRadar(7)
    end

end
