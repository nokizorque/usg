-- * Collision/Scale object Manager * --
noCollsTab = {}
noScaleTab = {}
addEventHandler("onClientResourceStart", resourceRoot, function()
	local i = 1
	while(i <= #noCollsTab)do
		setElementCollisionsEnabled(noCollsTab[i], false)
		i=i+1
	end
	local j = 1
	while(j <= #noScaleTab)do
		setObjectScale(noScaleTab[j], 0)
		j=j+1
	end
end
)
table.insert(noScaleTab, createObject(8355,7948.3994140625,-3423.19921875,114.09999847412,320.39428710938,0,1.99951171875))
table.insert(noScaleTab, createObject(8355,7988.2998046875,-3421.7998046875,114.09999847412,320.39428710938,0,1.99951171875))
table.insert(noScaleTab, createObject(8355,8020.2001953125,-3361.5,65.199996948242,320.39428710938,0,1.99951171875))
table.insert(noScaleTab, createObject(9623,4570.5,-652.5,-2.5,0,0,19.9951171875))
table.insert(noScaleTab, createObject(9623,4616.7998046875,-628.5,-2.5,0,0,39.995727539063))
table.insert(noScaleTab, createObject(9623,4642,-600.5,-2.5,0,0,59.996337890625))
table.insert(noScaleTab, createObject(9623,4657.1000976563,-563.90002441406,-2.5,0,0,79.996948242188))
table.insert(noScaleTab, createObject(9623,4658.5,-525.40002441406,-2.5,0,0,99.99755859375))
table.insert(noScaleTab, createObject(9623,4646.8999023438,-490.39999389648,-2.5,0,0,119.99267578125))
table.insert(noScaleTab, createObject(9623,4582.3999023438,-435.39999389648,-2.5,0,0,159.98291015625))
table.insert(noScaleTab, createObject(9623,4589.6000976563,-437.60000610352,-2.5,0,0,159.98291015625))
table.insert(noScaleTab, createObject(9623,4622.5,-458.39999389648,-2.5,0,0,139.98779296875))
table.insert(noScaleTab, createObject(9623,4513.6000976563,-424.79998779297,-2.5,0,0,159.97741699219))
table.insert(noScaleTab, createObject(9623,4481,-407,-2.5,0,0,139.97680664063))
table.insert(noScaleTab, createObject(9623,4454.5,-378.10000610352,-2.5,0,0,119.97619628906))
table.insert(noScaleTab, createObject(9623,4440,-343.10000610352,-2.5,0,0,99.9755859375))
table.insert(noScaleTab, createObject(9623,4438.5,-304.70001220703,-2.5,0,0,79.974975585938))
table.insert(noScaleTab, createObject(9623,4450.2001953125,-267.20001220703,-2.5,0,0,59.974365234375))
table.insert(noScaleTab, createObject(9623,4475,-236.80000305176,-2.5,0,0,39.973754882813))
table.insert(noScaleTab, createObject(9623,4507.5,-216.69999694824,-2.5,0,0,19.97314453125))
table.insert(noScaleTab, createObject(9623,4544.1000976563,-209,-2.5,0,0,359.97253417969))
table.insert(noScaleTab, createObject(9623,4640.8999023438,-212.80000305176,-2.5999999046326,0,0,359.97253417969))
table.insert(noScaleTab, createObject(9623,4640.8999023438,-203.80000305176,-2.5999999046326,0,0,359.97253417969))
table.insert(noScaleTab, createObject(8355,4727.6000976563,-209.19999694824,0.10000000149012,0,0,270))
table.insert(noScaleTab, createObject(8355,4798.6000976563,-209.39999389648,0.10000000149012,0,0,270))
table.insert(noScaleTab, createObject(8355,4727.2998046875,-209.39999389648,-4.6999998092651,0,57.996826171875,270))
table.insert(noScaleTab, createObject(8355,4798.6000976563,-209.39999389648,-4.6999998092651,0,58,270))
table.insert(noScaleTab, createObject(8355,4727.2998046875,-209.3994140625,-4.6999998092651,0,57.996826171875,90))
table.insert(noScaleTab, createObject(8355,4798.6000976563,-209.5,-4.6999998092651,0,57.996826171875,90))
table.insert(noCollsTab, createObject(4874,4863.1000976563,-192.5,3.5999999046326,270,0,90))
table.insert(noCollsTab, createObject(10871,4716.5,-201.099609375,59,90,0,269.98901367188))
table.insert(noCollsTab, createObject(10871,4716.5,-158.599609375,-14.60000038147,90,0,270))
table.insert(noCollsTab, createObject(10871,4716.5,-167,39.299999237061,29.99267578125,90,179.98352050781))
table.insert(noCollsTab, createObject(10871,4716.5,-251.8994140625,39.299999237061,29.99267578125,90,179.98352050781))
table.insert(noCollsTab, createObject(10871,4716.5,-243.5,-14.60000038147,90,0,269.98901367188))
table.insert(noCollsTab, createObject(10871,4716.5,-209.39999389648,-34.099998474121,30,90,179.99444580078))
table.insert(noScaleTab, createObject(6959,6686.2001953125,-1994.8000488281,5.5999999046326,0,0,0))
table.insert(noScaleTab, createObject(6959,6647.2998046875,-1995,1.7000000476837,0,349.99694824219,0))
table.insert(noScaleTab, createObject(6959,6643.1748046875,-1995,1.1423369646072,0,346.40002441406,0))
table.insert(noScaleTab, createObject(8357,7330.1000976563,-2001.5999755859,0,0,0,0))
table.insert(noScaleTab, createObject(8355,7660.8999023438,-2079,0.60000002384186,0,0,0))
table.insert(noScaleTab, createObject(8355,7664.8999023438,-2079.1000976563,0.60000002384186,0,0,0))
table.insert(noScaleTab, createObject(8355,7701.7001953125,-2079,0.60000002384186,0,0,0))
table.insert(noScaleTab, createObject(622,7681.8994140625,-2085.69921875,-16,33.964233398438,0,189.97009277344))
table.insert(noScaleTab, createObject(622,7678.2998046875,-2080.099609375,-16,33.975219726563,0,99.9755859375))
table.insert(noScaleTab, createObject(622,7680.8994140625,-2073.19921875,-16,33.9697265625,0,359.97253417969))
table.insert(noScaleTab, createObject(622,7684.7998046875,-2079.099609375,-16,33.964233398438,0,279.97009277344))
table.insert(noCollsTab, createObject(622,7678.2998046875,-2080.1000976563,-16,33.977264404297,0,99.980438232422))
table.insert(noCollsTab, createObject(622,7680.8999023438,-2073.1999511719,-16,33.975219726563,0,359.9755859375))
table.insert(noCollsTab, createObject(622,7684.7998046875,-2079.1000976563,-16,33.9697265625,0,279.97253417969))
table.insert(noCollsTab, createObject(622,7680.8999023438,-2087.6000976563,-18,41.851837158203,354.62643432617,195.56072998047))
table.insert(noScaleTab, createObject(6959,8186.6000976563,-1737.5999755859,143.69999694824,0,90,44.994506835938))
table.insert(noScaleTab, createObject(6959,8186.6000976563,-1737.5999755859,102.30000305176,0,90,44.994506835938))
table.insert(noScaleTab, createObject(6959,8186.6000976563,-1737.5999755859,69.400001525879,0,90,45))
table.insert(noScaleTab, createObject(6959,8186.5,-1737.69921875,69.400001525879,0,90,44.994506835938))
table.insert(noScaleTab, createObject(6959,8186.5,-1737.6999511719,109.69999694824,0,90,44.994506835938))
table.insert(noScaleTab, createObject(6959,8186.5,-1737.6999511719,150.69999694824,0,90,44.994506835938))
table.insert(noScaleTab, createObject(6959,8145.6000976563,-1777.9000244141,57.299999237061,0,297.74597167969,44.983520507813))
table.insert(noScaleTab, createObject(3458,7923.7998046875,-2285.5,123.5,0,0,8.009033203125))
table.insert(noScaleTab, createObject(3458,7924.5,-2290.6000976563,123.5,0,0,8.009033203125))
table.insert(noScaleTab, createObject(8355,8055.1240234375,-3310.9033203125,24.44867515564,320.39978027344,0,1.99951171875))
table.insert(noScaleTab, createObject(8355,8054.9501953125,-3305.9423828125,20.598300933838,323.99780273438,0,1.99951171875))
table.insert(noScaleTab, createObject(8355,8054.76953125,-3300.75,17.067207336426,327.59582519531,0,1.99951171875))
table.insert(noScaleTab, createObject(8355,8054.580078125,-3295.345703125,13.869332313538,331.19934082031,0,1.99951171875))
table.insert(noScaleTab, createObject(8355,8054.384765625,-3289.751953125,11.017294883728,334.79736328125,0,1.99951171875))
table.insert(noScaleTab, createObject(8355,8054.18359375,-3283.9892578125,8.5223512649536,338.39538574219,0,1.99951171875))
table.insert(noScaleTab, createObject(8355,8053.9775390625,-3278.08203125,6.3943481445313,341.99890136719,0,1.99951171875))
table.insert(noScaleTab, createObject(8355,8053.767578125,-3272.0537109375,4.6416835784912,345.59692382813,0,1.99951171875))
table.insert(noScaleTab, createObject(8355,8053.5537109375,-3265.9267578125,3.2712750434875,349.19494628906,0,1.99951171875))
table.insert(noScaleTab, createObject(8355,8053.3369140625,-3259.7255859375,2.2885298728943,352.79846191406,0,1.99951171875))
table.insert(noScaleTab, createObject(8355,8053.119140625,-3253.474609375,1.6973271369934,356.396484375,0,1.99951171875))
table.insert(noScaleTab, createObject(8355,8052.8994140625,-3247.19921875,1.5,0,0,1.99951171875))
table.insert(noScaleTab, createObject(8355,8048.7998046875,-3130.8994140625,1.5,0,0,1.99951171875))
table.insert(noCollsTab, createObject(3450,4544,-632.7998046875,2,0,0,0))
table.insert(noCollsTab, createObject(3450,4571.8994140625,-631.3994140625,2,0,0,19.9951171875))
table.insert(noCollsTab, createObject(3450,4602.7998046875,-615.8994140625,2,0,0,29.99267578125))
table.insert(noCollsTab, createObject(3450,4618.8994140625,-598,2,0,0,49.98779296875))
table.insert(noCollsTab, createObject(3450,4630.7001953125,-576.69921875,2,0,0,69.98291015625))
table.insert(noCollsTab, createObject(3450,4640.7001953125,-554.19921875,2,0,0,83.9794921875))
table.insert(noCollsTab, createObject(3450,4639.5,-530.2998046875,2,0,0,103.974609375))
table.insert(noCollsTab, createObject(3450,4629.5,-501.599609375,2,0,0,119.970703125))
table.insert(noCollsTab, createObject(3450,4611.099609375,-473.3994140625,2,0,0,129.97375488281))
table.insert(noCollsTab, createObject(3450,4585.3994140625,-457.5,2,0,0,159.97192382813))
table.insert(noCollsTab, createObject(3450,4559.7001953125,-446.599609375,2,0,0,159.96643066406))
table.insert(noCollsTab, createObject(3450,4535,-447.7998046875,2,0,0,173.96850585938))
table.insert(noCollsTab, createObject(3450,4506.099609375,-441.7998046875,2,0,0,151.96838378906))
table.insert(noCollsTab, createObject(3450,4472.7001953125,-425.19921875,2,0,0,143.95935058594))
table.insert(noCollsTab, createObject(3450,4437.2998046875,-383.2998046875,2,0,0,113.96118164063))
table.insert(noCollsTab, createObject(3450,4421.2001953125,-340.2998046875,2,0,0,99.959106445313))
table.insert(noCollsTab, createObject(3450,4420.2001953125,-298.099609375,2,0,0,79.95849609375))
table.insert(noCollsTab, createObject(3450,4431.7998046875,-262.19921875,2,0,0,61.957397460938))
table.insert(noCollsTab, createObject(3450,4444.3994140625,-241.5,2,0,0,51.954345703125))
table.insert(noCollsTab, createObject(3450,4465.7001953125,-219.599609375,2,0,0,41.956787109375))
table.insert(noCollsTab, createObject(3450,4493,-201.7998046875,2,0,0,21.95068359375))
table.insert(noCollsTab, createObject(3450,4520.599609375,-191,2,0,0,21.945190429688))
table.insert(noCollsTab, createObject(3450,4547.7001953125,-189.69921875,2,0,0,1.9500732421875))
table.insert(noCollsTab, createObject(3450,4573.099609375,-189.19921875,2,0,0,1.9500732421875))
table.insert(noCollsTab, createObject(3450,4595.3994140625,-215.69921875,2,0,0,241.94641113281))
table.insert(noCollsTab, createObject(3450,4620.3994140625,-201.099609375,2,0,0,241.94091796875))
table.insert(noCollsTab, createObject(3450,4652,-214.7998046875,2,0,0,271.94458007813))
table.insert(noCollsTab, createObject(3450,4622.8994140625,-222.3994140625,2,0,0,271.94458007813))
table.insert(noCollsTab, createObject(3450,4652.5,-237.3994140625,2,0,0,271.94458007813))
table.insert(noCollsTab, createObject(3450,4678.7001953125,-234.69921875,2,0,0,271.94458007813))
table.insert(noCollsTab, createObject(3450,4675.7001953125,-201.5,2,0,0,271.94458007813))
table.insert(noCollsTab, createObject(3450,4678,-245.69921875,2,0,0,271.94458007813))
table.insert(noCollsTab, createObject(3450,4671.8994140625,-178.19921875,2,0,0,271.94458007813))
table.insert(noCollsTab, createObject(3450,4653.2998046875,-190.099609375,2,0,0,241.94091796875))
table.insert(noCollsTab, createObject(3450,4560.7001953125,-229.2998046875,2,0,0,271.94458007813))
table.insert(noCollsTab, createObject(3450,4520.8994140625,-233.099609375,2,0,0,291.93969726563))
table.insert(noCollsTab, createObject(3450,4496.099609375,-246.599609375,2,0,0,311.93481445313))
table.insert(noCollsTab, createObject(3450,4485.3994140625,-249.099609375,2,0,0,219.96826171875))
table.insert(noCollsTab, createObject(3450,4476.2001953125,-267.2998046875,2,0,0,331.92993164063))
table.insert(noCollsTab, createObject(3450,4468.3994140625,-270.599609375,2,0,0,239.96337890625))
table.insert(noCollsTab, createObject(3450,4463.8994140625,-293.2998046875,2,0,0,351.92504882813))
table.insert(noCollsTab, createObject(3450,4456.7998046875,-306.69921875,2,0,0,249.9609375))
table.insert(noCollsTab, createObject(3450,4458.7998046875,-323.19921875,2,0,0,11.920166015625))
table.insert(noCollsTab, createObject(3450,4463.5,-354.7998046875,2,0,0,211.91528320313))
table.insert(noCollsTab, createObject(3450,4481.099609375,-382.19921875,2,0,0,225.91186523438))
table.insert(noCollsTab, createObject(3450,4490.3994140625,-386.599609375,2,0,0,313.90686035156))
table.insert(noCollsTab, createObject(3450,4505.2998046875,-398.7998046875,2,0,0,243.90747070313))
table.insert(noCollsTab, createObject(3450,4509.3994140625,-400.69921875,2,0,0,333.90197753906))
table.insert(noCollsTab, createObject(3450,4533.8994140625,-407.3994140625,2,0,0,353.89709472656))
table.insert(noCollsTab, createObject(3450,4564.3994140625,-409.099609375,2,0,0,353.8916015625))
table.insert(noCollsTab, createObject(3450,4592.2998046875,-416.8994140625,2,0,0,333.896484375))
table.insert(noCollsTab, createObject(3450,4613.099609375,-426.69921875,2,0,0,333.896484375))
table.insert(noCollsTab, createObject(3450,4638.2001953125,-442.3994140625,2,0,0,319.89440917969))
table.insert(noCollsTab, createObject(3450,4656.599609375,-467.3994140625,2,0,0,299.89379882813))
table.insert(noCollsTab, createObject(3450,4672.599609375,-491.19921875,2,0,0,299.88830566406))
table.insert(noCollsTab, createObject(3450,4676.2001953125,-517.19921875,2,0,0,279.89318847656))
table.insert(noCollsTab, createObject(3450,4678.7998046875,-542.69921875,2,0,0,269.89013671875))
table.insert(noCollsTab, createObject(3450,4675.2998046875,-571.3994140625,2,0,0,249.88952636719))
table.insert(noCollsTab, createObject(3450,4669.3994140625,-594.7998046875,2,0,0,239.88647460938))
table.insert(noCollsTab, createObject(3450,4656.599609375,-614.599609375,2,0,0,239.88647460938))
table.insert(noCollsTab, createObject(3450,4635.3994140625,-637.7998046875,2,0,0,219.88586425781))
table.insert(noCollsTab, createObject(3450,4610.5,-657,2,0,0,219.88586425781))
table.insert(noCollsTab, createObject(3450,4586.7998046875,-666.099609375,2,0,0,199.88525390625))
table.insert(noCollsTab, createObject(3450,4555.2001953125,-671.7998046875,2,0,0,179.88464355469))
table.insert(noCollsTab, createObject(3450,4537.2001953125,-674.19921875,2,0,0,179.87915039063))