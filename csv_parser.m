classdef csv_parser
    properties (Access = private)
        Time % s
        GPSSpeed  % km/h
        GPSNsat  % unitless
        GPSLatAcc  % g
        GPSLonAcc  % g
        GPSSlope  % deg
        GPSHeading  % deg
        GPSGyro  % deg/s
        GPSAltitude  % m
        GPSPosAccuracy  % m 
        GPSSpdAccuracy  % m/s
        GPSRadius  % m 
        GPSLatitude  % deg
        GPSLongitude  % deg
        LoggerTemperature  % Celsius
        ExternalVoltage  % V
        RPM  % rpm
        InlineAcc  % g
        LateralAcc  % g
        VerticalAcc  % g
        RollRatedup1   % deg/s
        PitchRate  % deg/s
        YawRatedup1  % deg/s
        ProcessedThrottl  % 
        RawThrottle1  % 
        RawThrottle2  % 
        RawBrake  % 
        FRBrakeTemp  % 
        FRDamperPot  % 
        RRBrakeTemp  % 
        RRDamperPot  % 
        RBrakePressureDL  %  
        MotFlow  % 
        InvFlow  % 
        FLDamperPot  % 
        RLDamperPot  % 
        LvBatt2Voltage  % 
        RCSTATE  % 
        RCERROR  % 
        ACMSTATE  % 
        ACMERROR  % 
        CockpitIndicator  % 
        FCSTATE  % 
        FCERROR  % 
        PEDALERROR  % 
        IntegPower  % 
        CurrentLimitToIn  % 
        ModuleATemp  % 
        GateDriverTemp  % 
        ModuleBTemp  % 
        ModuleCTemp  % 
        ControlTemp  % 
        CoolantTemp  % 
        HotSpotTemp  % 
        MotorTemp  % 
        TorqueShudder  % 
        MotorAngle  % 
        MotorSpeed1  % 
        ElectricFreq  % 
        DeltaRes  %  
        PhaseACurrent  % 
        PhaseBCurrent  % 
        PhaseCCurrent  % 
        DcBusCurrent  % 
        DcBusVoltageInfo  % 
        OutputVoltage  % 
        VabVdVoltage  % 
        VbcVqVoltage  % 
        FluxCommanded  % 
        FluxFeedback  % 
        IdFeedback  % 
        IqFeedback  % 
        TorqueCommanded  % 
        TorqueFeedback  % 
        MotorSpeed2  % 
        DcBusVoltage  % 
        LowCellVoltageFa  % 
        PackTooHotFault  % 
        LowestCellVoltTo  % 
        InternalCommsFau  % 
        WeakCellFault  % 
        OpenWiringFault  % 
        ThermistorFault  % 
        YawRateDup2  % 
        AccY  % 
        RollRateDup2  % 
        AccX  % 
        AccZ  % 
        PackCurrent  % 
        PackVoltage  % 
        PackSOC  % 
        CurrentLimitStat  % 
        PackDCL  % 
        HighCellVoltage  % 
        HighCellID  % 
        LowCellVoltage  % 
        LowCellID  % 
        AvgCellVoltage  % 
        MaxCellVoltage  % 
        MaxPackVoltage  % 
        MaxCellVoltag01  % 
        RelativeThermID  % 
        ThermVal  % 
        ThermsEnabled  % 
        LoThermVal  % 
        HiThermVal  % 
        LoThermID  % 
        HiThermID  %  
    end

    methods
        % filename: name of CSV file
        function obj = csv_parser(filename)
            data = readtable(filename);
            
            obj.Time = data.Time; 
            obj.GPSSpeed = data.GPSSpeed; 
            obj.GPSNsat = data.GPSNsat; 
            obj.GPSLatAcc = data.GPSLatAcc; 
            obj.GPSLonAcc = data.GPSLonAcc; 
            obj.GPSSlope = data.GPSSlope; 
            obj.GPSHeading = data.GPSHeading;
            obj.GPSGyro = data.GPSGyro; 
            obj.GPSAltitude = data.GPSAltitude; 
            obj.GPSPosAccuracy = data.GPSPosAccuracy; 
            obj.GPSSpdAccuracy = data.GPSSpdAccuracy; 
            obj.GPSRadius = data.GPSRadius; 
            obj.GPSLatitude = data.GPSLatitude; 
            obj.GPSLongitude = data.GPSLongitude; 
            obj.LoggerTemperature = data.LoggerTemperature;
            obj.ExternalVoltage = data.ExternalVoltage;
            obj.LateralAcc = data.RPM;
            obj.VerticalAcc = data.VerticalAcc; 
            obj.RollRatedup1 = data.RollRateDup1; 
            obj.PitchRate = data.PitchRate; 
            obj.YawRatedup1 = data.YawRateDup1;
            obj.ProcessedThrottl = data.ProcessedThrottl; 
            obj.RawThrottle1 = data.RawThrottle1; 
            obj.RawThrottle2 = data.RawThrottle2;
            obj.RawBrake = data.RawBrake; 
            obj.FRBrakeTemp = data.FRBrakeTemp;
            obj.FRDamperPot = data.FRDamperPot; 
            obj.RRBrakeTemp = data.RRBrakeTemp; 
            obj.RRDamperPot = data.RRDamperPot;
            obj.RBrakePressureDL = data.RBrakePressureDL;  
            obj.MotFlow = data.MotFlow; 
            obj.InvFlow = data.InvFlow; 
            obj.FLDamperPot = data.FLDamperPot; 
            obj.RLDamperPot = data.RLDamperPot; 
            obj.LvBatt2Voltage = data.LvBatt2Voltage;
            obj.RCSTATE = data.RCSTATE;
            obj.RCERROR = data.RCERROR; 
            obj.ACMSTATE = data.ACMSTATE; 
            obj.ACMERROR = data.ACMERROR;
            obj.CockpitIndicator = data.CockpitIndicator; 
            obj.FCSTATE = data.FCSTATE;  
            obj.FCERROR = data.FCERROR;
            obj.PEDALERROR = data.PEDALERROR; 
            obj.IntegPower = data.IntegPower; 
            obj.CurrentLimitToIn = data.CurrentLimitToIn; 
            obj.ModuleATemp = data.ModuleATemp;
            obj.GateDriverTemp = data.GateDriverTemp; 
            obj.ModuleBTemp = data.ModuleBTemp;
            obj.ModuleCTemp = data.ModuleCTemp;
            obj.ControlTemp = data.ControlTemp; 
            obj.CoolantTemp = data.CoolantTemp; 
            obj.HotSpotTemp = data.HotSpotTemp; 
            obj.MotorTemp = data.MotorTemp; 
            obj.TorqueShudder = data.TorqueShudder; 
            obj.MotorAngle = data.MotorAngle; 
            obj.MotorSpeed1 = data.MotorSpeed1; 
            obj.ElectricFreq = data.ElectricFreq; 
            obj.DeltaRes = data.DeltaRes; 
            obj.PhaseACurrent = data.PhaseACurrent; 
            obj.PhaseBCurrent = data.PhaseBCurrent;
            obj.PhaseCCurrent = data.PhaseCCurrent; 
            obj.DcBusCurrent = data.DcBusCurrent;  
            obj.DcBusVoltageInfo = data.DcBusVoltageInfo; 
            obj.OutputVoltage = data.OutputVoltage; 
            obj.VabVdVoltage = data.VabVdVoltage; 
            obj.VbcVqVoltage = data.VbcVqVoltage; 
            obj.FluxCommanded = data.FluxCommanded; 
            obj.FluxFeedback = data.FluxFeedback; 
            obj.IdFeedback = data.IdFeedback; 
            obj.IqFeedback = data.IqFeedback; 
            obj.TorqueCommanded = data.TorqueCommanded;
            obj.TorqueFeedback = data.TorqueFeedback;
            obj.MotorSpeed2 = data.MotorSpeed2;
            obj.DcBusVoltage = data.DcBusVoltage;
            obj.LowCellVoltageFa = data.LowCellVoltageFa;
            obj.PackTooHotFault = data.PackTooHotFault; 
            obj.LowestCellVoltTo = data.LowestCellVoltTo;  
            obj.InternalCommsFau = data.InternalCommsFau; 
            obj.WeakCellFault = data.WeakCellFault; 
            obj.OpenWiringFault = data.OpenWiringFault;
            obj.ThermistorFault = data.ThermistorFault; 
            obj.YawRateDup2 = data.YawRateDup2;
            obj.AccY = data.AccY;
            obj.RollRateDup2 = data.RollRateDup2;
            obj.AccX = data.AccX; 
            obj.AccZ = data.AccZ;
            obj.PackCurrent = data.PackCurrent;
            obj.PackVoltage = data.PackVoltage;
            obj.PackSOC = data.PackSOC;
            obj.CurrentLimitStat = data.CurrentLimitStat; 
            obj.PackDCL = data.PackDCL; 
            obj.HighCellVoltage = data.HighCellVoltage;  
            obj.HighCellID = data.HighCellID;
            obj.LowCellVoltage = data.LowCellVoltage;  
            obj.LowCellID = data.LowCellID; 
            obj.AvgCellVoltage = data.AvgCellVoltage; 
            obj.MaxCellVoltage = data.MaxCellVoltage;
            obj.MaxPackVoltage = data.MaxPackVoltage;
            obj.MaxCellVoltag01 = data.MaxCellVoltag01;
            obj.RelativeThermID = data.RelativeThermID;
            obj.ThermVal = data.ThermVal;
            obj.ThermsEnabled = data.ThermsEnabled;
            obj.LoThermVal = data.LoThermVal;
            obj.HiThermVal = data.HiThermVal;
            obj.LoThermID = data.LoThermID; 
            obj.HiThermID = data.HiThermID;
        end
    end
end