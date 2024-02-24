 //[wave,type,spawnpoint,delay]

waves = ds_list_create();
ds_list_add(waves,[0,oEnemy,0,0]);
ds_list_add(waves,[0,oEnemy,0,40]);
ds_list_add(waves,[0,oEnemy,0,60]);
ds_list_add(waves,[0,oEnemy,1,80]);
ds_list_add(waves,[0,oEnemy,1,100]);
ds_list_add(waves,[0,oEnemy,1,120]);
ds_list_add(waves,[0,oEnemy,0,140]);
ds_list_add(waves,[0,oEnemy,0,160]);

ds_list_add(waves,[1,oEnemy,0,10]);
ds_list_add(waves,[1,oEnemy,0,20]);
ds_list_add(waves,[1,oEnemy,0,30]);
ds_list_add(waves,[1,oEnemy,0,40]);
ds_list_add(waves,[1,oEnemy,0,50]);
ds_list_add(waves,[1,oEnemy,0,60]);
ds_list_add(waves,[1,oEnemy,0,70]);
ds_list_add(waves,[1,oEnemy,0,80]);

ds_list_add(waves,[2,oEnemy,1,0]);
ds_list_add(waves,[2,oEnemy,1,40]);
ds_list_add(waves,[2,oEnemy,1,60]);
ds_list_add(waves,[2,oEnemy,1,80]);
ds_list_add(waves,[2,oEnemy,1,100]);
ds_list_add(waves,[2,oEnemy,1,120]);
ds_list_add(waves,[2,oEnemy,1,140]);
ds_list_add(waves,[2,oEnemy,1,160]);

ds_list_add(waves,[3,oEnemy,1,10]);
ds_list_add(waves,[3,oEnemy,1,20]);
ds_list_add(waves,[3,oEnemy,1,30]);
ds_list_add(waves,[3,oEnemy,1,40]);
ds_list_add(waves,[3,oEnemy,1,50]);
ds_list_add(waves,[3,oEnemy,1,60]);
ds_list_add(waves,[3,oEnemy,1,70]);
ds_list_add(waves,[3,oEnemy,1,80]);

ds_list_add(waves,[4,oEnemy,1,0]);
ds_list_add(waves,[4,oEnemy,1,50]);
ds_list_add(waves,[4,oEnemy,1,100]);
ds_list_add(waves,[4,oEnemy,1,150]);

spawn[0,0] = 200;  // X (left)
spawn[0,1] = 1700; // Y (left)
spawn[1,0] = 1250; // X (right)
spawn[1,1] = 1700; // Y (right)
