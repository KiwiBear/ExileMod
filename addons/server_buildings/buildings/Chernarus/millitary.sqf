diag_log "Waiting for Chernarus Custom Buildings";
if (isServer) then {
	diag_log "Spawning Chernarus Custom Buildings";
	private ["_objs"];
	_objs = [
	["HeliHEmpty",[6285.23,7813.34,0],0,0,0,false],
    ["HeliHEmpty",[5951.47,1986.55,0],0,0,0,false],
    ["Land_Cargo_Patrol_V1_F",[4835.65,2552.74,0],297.273,0,0,false],
    ["Land_Cargo_Patrol_V1_F",[4851.13,2545.2,0],299.091,0,0,false],
    ["Land_Cargo_House_V1_F",[4824.69,2529.14,0],294.091,0,0,false],
    ["Land_Cargo_House_V1_F",[4829.06,2540,0],293.636,0,0,false],
    ["Land_BagBunker_Large_F",[4833.83,2510.67,0],335.455,0,0,false],
    ["Land_BagBunker_Large_F",[4845.06,2520.52,0],295.909,0,0,false],
    ["Land_Medevac_HQ_V1_F",[4864.26,2533.3,0],295.909,0,0,false],
    ["Land_Cargo_HQ_V3_F",[5007.62,2283.13,0],119.545,0,0,false],
    ["Land_Cargo_HQ_V3_F",[5176.67,2347.29,0],359.091,0,0,false],
    ["Land_New_WiredFence_5m_F",[4834.34,2560.49,0],27.2727,0,0,false],
    ["Land_New_WiredFence_5m_F",[4838.97,2558.11,0],27.2727,0,0,false],
    ["Land_New_WiredFence_5m_F",[4843.59,2555.72,0],27.2727,0,0,false],
    ["Land_New_WiredFence_5m_F",[4848.22,2553.33,0],27.2727,0,0,false],
    ["Land_New_WiredFence_5m_F",[4852.85,2550.95,0],27.2727,0,0,false],
    ["Land_New_WiredFence_5m_F",[4857.48,2548.56,0],27.2727,0,0,false],
    ["Land_New_WiredFence_5m_F",[4862.1,2546.18,0],27.2727,0,0,false],
    ["Land_New_WiredFence_5m_F",[4866.73,2543.79,0],27.2727,0,0,false],
    ["Land_New_WiredFence_5m_F",[4871.36,2541.41,0],27.2727,0,0,false],
    ["Land_New_WiredFence_5m_F",[4875.99,2539.02,0],27.2727,0,0,false],
    ["Land_New_WiredFence_5m_F",[4876.54,2535.44,0],295.455,0,0,false],
    ["Land_New_WiredFence_5m_F",[4874.3,2530.74,0],295.455,0,0,false],
    ["Land_New_WiredFence_5m_F",[4872.07,2526.04,0],295.455,0,0,false],
    ["Land_i_Barracks_V2_F",[4650.79,2474.54,-0.118035],359.091,0,0,false],
    ["Land_IndFnc_Corner_F",[4596.32,2457.61,0],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4599.48,2457.61,0],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4602.64,2457.61,0],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4605.8,2457.61,4.76837e-007],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4608.96,2457.61,9.53674e-007],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4612.13,2457.61,1.43051e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4621.61,2457.61,2.38419e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4624.77,2457.61,2.38419e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4627.93,2457.61,2.86102e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4637.42,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4640.58,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4643.74,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4646.9,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4650.06,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4653.23,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4662.71,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4665.87,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4669.03,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4672.2,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4675.36,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4678.52,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4684.84,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4688,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4691.17,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4694.33,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4697.49,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4700.65,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4703.81,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4706.97,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4710.14,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_Corner_F",[4713.3,2457.61,3.8147e-006],0,0,0,false],
    ["Land_IndFnc_3_D_F",[4681.74,2457.47,0],0,0,0,false],
    ["Land_IndFnc_3_D_F",[4656.38,2457.46,0],0,0,0,false],
    ["Land_IndFnc_3_D_F",[4659.57,2457.38,0],0,0,0,false],
    ["Land_IndFnc_3_D_F",[4631.06,2457.36,0],0,0,0,false],
    ["Land_IndFnc_3_D_F",[4634.25,2457.48,0],0,0,0,false],
    ["Land_IndFnc_3_D_F",[4615.25,2457.45,0],0,0,0,false],
    ["Land_IndFnc_3_D_F",[4618.3,2457.23,0],0,0,0,false],
    ["Land_IndFnc_3_D_F",[4713.5,2457.99,0],178.636,0,0,false],
    ["Land_Cargo_House_V1_F",[4716.63,2474.18,0],358.636,0,0,false],
    ["Land_Cargo_House_V1_F",[4702.11,2475.18,0],358.636,0,0,false],
    ["Land_Cargo_House_V1_F",[4688.58,2475.64,0],358.636,0,0,false],
    ["Land_Cargo_House_V1_F",[4674.85,2473.89,0],358.636,0,0,false],
    ["Land_Cargo_House_V1_F",[4627.61,2474.47,0],0,0,0,false],
    ["Land_Cargo_House_V1_F",[4616.72,2474.46,0],0,0,0,false],
    ["Land_Cargo_House_V1_F",[4606.69,2474.45,0],0,0,0,false],
    ["Land_Cargo_House_V1_F",[4596.72,2474.43,0],0,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8551.35,8190.35,0],5.45454,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8555.38,8189.97,0],5.45453,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8559.42,8189.58,0],5.45453,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8563.45,8189.2,0],5.45453,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8567.49,8188.81,0],5.45453,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8571.52,8188.42,0],5.45453,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8575.56,8188.04,0],5.45453,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8577.64,8185.88,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8577.32,8181.84,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8577,8177.8,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8576.68,8173.76,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8576.36,8169.72,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8576.04,8165.68,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8575.72,8161.64,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8575.4,8157.6,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8575.07,8153.56,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8574.75,8149.52,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8574.43,8145.48,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8574.11,8141.44,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8573.79,8137.4,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8573.47,8133.36,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8573.15,8129.32,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8572.83,8125.28,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8572.5,8121.24,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8572.18,8117.2,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8571.86,8113.16,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8571.54,8109.13,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8571.22,8105.09,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8570.9,8101.05,0],94.5455,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8568.84,8098.94,0],179.091,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8564.79,8098.88,0],179.091,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8560.74,8098.81,0],179.091,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8556.68,8098.75,0],179.091,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8552.63,8098.68,0],179.091,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8542.88,8099.94,0],243.636,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8541.08,8103.57,0],243.636,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8539.28,8107.21,0],243.636,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8537.48,8110.84,0],243.636,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8535.68,8114.47,0],243.636,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8533.88,8118.1,0],243.636,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8532.08,8121.73,0],243.637,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8530.28,8125.36,0],243.637,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8529.43,8129.06,0],270.909,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8529.49,8133.11,0],270.909,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8529.55,8137.17,0],270.909,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8529.62,8141.22,0],270.909,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8529.68,8145.27,0],270.909,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8529.75,8149.32,0],270.909,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8529.81,8153.37,0],270.909,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8529.88,8157.42,0],270.909,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8529.94,8161.48,0],270.909,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8530.01,8165.53,0],270.909,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8530.07,8169.58,0],270.909,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8530.13,8173.63,0],270.909,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8530.2,8177.68,0],270.909,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8530.26,8181.73,0],270.909,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8530.33,8185.79,0],270.909,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8532.42,8188.02,0],354.545,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8536.26,8188.45,0],351.818,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8540.11,8189.03,0],351.364,0,0,false],
    ["Land_Mil_WallBig_4m_F",[8542.08,8189.37,0],351.364,0,0,false],
    ["Land_HBarrierTower_F",[8559.48,8208.34,0],182.273,0,0,false],
    ["Land_HBarrierTower_F",[8544.17,8210.51,0],184.545,0,0,false],
    ["Land_HBarrierTower_F",[8545.65,8084.95,0],336.818,0,0,false],
    ["Land_HBarrierTower_F",[8561.42,8088.36,0],340,0,0,false],
    ["Land_Cargo_Patrol_V1_F",[8572.95,8184.14,0.072937],3.18183,0,0,false],
    ["Land_Cargo_Patrol_V1_F",[8566.95,8103.39,-0.193512],1.81817,0,0,false],
    ["Land_u_Barracks_V2_F",[8560.64,8127.38,0.00128174],94.0909,0,0,false],
    ["Land_Cargo_House_V1_F",[8549.73,8178.36,0],96.3637,0,0,false],
    ["Land_Cargo_House_V1_F",[8548.41,8169.62,0],98.1818,0,0,false],
    ["Land_Cargo_House_V1_F",[8547.14,8161.9,0],97.2728,0,0,false],
    ["Land_Cargo_House_V1_F",[8539.91,8182.24,0],278.636,0,0,false],
    ["Land_Cargo_House_V1_F",[8540.99,8094.86,0],296.364,0,0,false],
    ["Land_Cargo_House_V1_F",[8536.72,8198.96,0],268.636,0,0,false],
    ["Land_HBarrier_large",[9609.16,11282.7,0],49.5455,0,0,false],
    ["Land_HBarrier_large",[9603.5,11288.9,0],49.5455,0,0,false],
    ["Land_HBarrier_large",[9597.99,11295,0],49.5455,0,0,false],
    ["Land_HBarrier_large",[9592.54,11301.2,0],49.5455,0,0,false],
    ["Land_HBarrier_large",[9587.01,11307.3,0],49.5455,0,0,false],
    ["Land_HBarrier_large",[9581.63,11313.6,0],51.8182,0,0,false],
    ["Land_HBarrier_large",[9576.18,11320,0],52.7273,0,0,false],
    ["Land_HBarrier_large",[9570.91,11326.4,0],49.5455,0,0,false],
    ["Land_HBarrier_large",[9559.77,11322.4,0],314.545,0,0,false],
    ["Land_HBarrier_large",[9555.88,11315.5,0],289.545,0,0,false],
    ["Land_HBarrier_large",[9554.5,11307.9,0],91.3636,0,0,false],
    ["Land_HBarrier_large",[9554.33,11299.6,0],273.182,0,0,false],
    ["Land_HBarrier_large",[9553.18,11292,0],288.182,0,0,false],
    ["Land_HBarrier_large",[9551.48,11284.4,0],277.273,0,0,false],
    ["Land_HBarrier_large",[9552.15,11277.3,0],254.545,0,0,false],
    ["Land_HBarrier_large",[9556.35,11270.6,0],42.7273,0,0,false],
    ["Land_HBarrier_large",[9562.59,11265.9,0],33.1818,0,0,false],
    ["Land_HBarrier_large",[9569.36,11262.4,0],26.8182,0,0,false],
    ["Land_HBarrier_large",[9602.87,11271.9,0],319.545,0,0,false],
    ["Land_HBarrier_large",[9596.57,11266.8,0],329.545,0,0,false],
    ["Land_HBarrier_large",[9590.32,11262.5,0],330.909,0,0,false],
    ["Land_HBarrier_large",[9582.95,11260.2,0],357.727,0,0,false],
    ["Land_HBarrier_large",[9575.73,11260.5,0],10,0,0,false],
    ["Land_Cargo_House_V2_F",[9561.46,11276,0],233.182,0,0,false],
    ["Land_Cargo_House_V1_F",[9560.31,11285.7,0],268.636,0,0,false],
    ["Land_Cargo_House_V1_F",[9562.15,11298,0],281.364,0,0,false],
    ["Land_Cargo_House_V1_F",[9562.65,11310.9,0],277.727,0,0,false],
    ["Land_Cargo_House_V1_F",[9570.45,11269.4,0],196.818,0,0,false],
    ["Land_Cargo_House_V1_F",[9583.51,11268.4,0],160.909,0,0,false],
    ["Land_Cargo_House_V1_F",[9595.86,11274.7,0],138.636,0,0,false],
    ["Land_i_Barracks_V1_F",[9559.72,11362.4,0],43.1818,0,0,false],
    ["Land_HBarrier_large",[4361.13,10958.7,0],324.091,0,0,false],
    ["Land_HBarrier_large",[4367.74,10963.6,0],327.273,0,0,false],
    ["Land_HBarrier_large",[4374.58,10968.2,0],328.636,0,0,false],
    ["Land_HBarrier_large",[4381.59,10972.4,0],331.818,0,0,false],
    ["Land_HBarrier_large",[4388.56,10976.8,0],328.182,0,0,false],
    ["Land_HBarrier_large",[4395.13,10981.5,0],324.545,0,0,false],
    ["Land_HBarrier_large",[4401.25,10986.3,0],325.455,0,0,false],
    ["Land_HBarrier_large",[4407.71,10990.8,0],324.545,0,0,false],
    ["Land_HBarrier_large",[4414.27,10995.6,0],326.364,0,0,false],
    ["Land_HBarrier_large",[4413.8,11001.4,0],51.8182,0,0,false],
    ["Land_HBarrier_large",[4408.55,11007.7,0],233.182,0,0,false],
    ["Land_HBarrier_large",[4403.81,11014.3,0],237.273,0,0,false],
    ["Land_HBarrier_large",[4399.1,11021,0],235,0,0,false],
    ["Land_HBarrier_large",[4394.52,11027.6,0],238.636,0,0,false],
    ["Land_HBarrier_large",[4389.79,11034.5,0],235,0,0,false],
    ["Land_HBarrier_large",[4384.88,11041.2,0],53.6363,0,0,false],
    ["Land_HBarrier_large",[4380.12,11047.2,0],55.9091,0,0,false],
    ["Land_HBarrier_large",[4375.47,11053.8,0],235,0,0,false],
    ["Land_HBarrier_large",[4370.75,11060.4,0],235,0,0,false],
    ["Land_HBarrier_large",[4365.93,11067.2,0],54.5454,0,0,false],
    ["Land_HBarrier_large",[4361.25,11073.5,0],53.6363,0,0,false],
    ["Land_HBarrier_large",[4356.29,11080.2,0],53.6363,0,0,false],
    ["Land_HBarrier_large",[4351.31,11086.6,0],54.5455,0,0,false],
    ["Land_HBarrier_large",[4346.19,11093.1,0],51.8182,0,0,false],
    ["Land_HBarrier_large",[4340.6,11092.7,0],321.818,0,0,false],
    ["Land_HBarrier_large",[4334.42,11087.4,0],320,0,0,false],
    ["Land_HBarrier_large",[4328.16,11081.7,0],319.091,0,0,false],
    ["Land_HBarrier_large",[4322.2,11075.9,0],318.182,0,0,false],
    ["Land_HBarrier_large",[4316.35,11069.9,0],316.364,0,0,false],
    ["Land_HBarrier_large",[4310.69,11064.4,0],319.545,0,0,false],
    ["Land_HBarrier_large",[4304.81,11059.2,0],318.182,0,0,false],
    ["Land_HBarrier_large",[4298.86,11053.7,0],319.545,0,0,false],
    ["Land_HBarrier_large",[4292.84,11048,0],319.091,0,0,false],
    ["Land_HBarrier_large",[4290.25,11045.7,0],320,0,0,false],
    ["Land_i_Barracks_V1_F",[4357.62,11058.1,-0.134888],52.2728,0,0,false],
    ["Land_i_Barracks_V1_F",[4317.79,11057.6,0.063385],317.727,0,0,false],
    ["Land_Cargo_Tower_V1_F",[4337.93,11075,0],265.909,0,0,false],
    ["Land_Cargo_Tower_V1_F",[4301.17,11041.6,0],225,0,0,false],
    ["Land_Cargo_HQ_V1_F",[4335.87,11010.6,0],196.818,0,0,false],
    ["Land_Cargo_House_V1_F",[4378.07,11030.7,0.0963745],24.0909,0,0,false],
    ["Land_Cargo_House_V1_F",[4384.55,11024.7,0],54.0909,0,0,false],
    ["Land_Cargo_House_V1_F",[4389.28,11017.6,0],55,0,0,false],
    ["Land_Cargo_House_V1_F",[4394.36,11010.4,0],55,0,0,false],
    ["Land_Cargo_House_V1_F",[4403.34,10996.1,0],86.3636,0,0,false],
    ["Land_Cargo_House_V1_F",[4399.21,11003.7,0],55.9091,0,0,false],
    ["Land_Medevac_HQ_V1_F",[4350.52,11026.6,0],17.7273,0,0,false],
    ["Land_TentHangar_V1_F",[4295.79,10970.1,0],328.636,0,0,false],
    ["Land_Cargo_Patrol_V1_F",[4384.24,10981.5,0],326.818,0,0,false],
    ["Land_Cargo_Patrol_V1_F",[4367.44,10970.7,0],328.636,0,0,false],
    ["Land_MilOffices_V1_F",[4289.3,11012.7,0.0435791],46.3636,0,0,false]
	];

	{
		private ["_obj"];
		_obj = createVehicle [_x select 0, [0,0,0], [], 0, "CAN_COLLIDE"];
		if (_x select 4) then {
			_obj setDir (_x select 2);
			_obj setPos (_x select 1);
		} else {
			_obj setPosATL (_x select 1);
			_obj setVectorDirAndUp (_x select 3);
		};
	} foreach _objs;
};