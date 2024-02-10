//[wave,type,spawnpoint,delay]

waves = ds_list_create();
ds_list_add(waves,[0,oEnemy,0,0]);
ds_list_add(waves,[0,oEnemy,0,50]);
ds_list_add(waves,[0,oEnemy,0,100]);
ds_list_add(waves,[0,oEnemy,1,0]);
ds_list_add(waves,[0,oEnemy,1,50]);
ds_list_add(waves,[0,oEnemy,1,100]);

ds_list_add(waves,[1,oEnemy,0,10]);
ds_list_add(waves,[1,oEnemy,0,20]);
ds_list_add(waves,[1,oEnemy,0,30]);
ds_list_add(waves,[1,oEnemy,0,40]);
ds_list_add(waves,[1,oEnemy,0,50]);
ds_list_add(waves,[1,oEnemy,0,60]);

ds_list_add(waves,[2,oEnemy,1,10]);
ds_list_add(waves,[2,oEnemy,1,20]);
ds_list_add(waves,[2,oEnemy,1,30]);
ds_list_add(waves,[2,oEnemy,1,40]);
ds_list_add(waves,[2,oEnemy,1,50]);
ds_list_add(waves,[2,oEnemy,1,60]);

ds_list_add(waves,[3,oEnemy,1,0]);

spawn[0,0] = 50;
spawn[0,1] = 50;
spawn[1,0] = 600;
spawn[1,1] = 10;
