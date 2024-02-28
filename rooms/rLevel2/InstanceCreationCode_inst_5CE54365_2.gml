 //[wave,type,spawnpoint,delay]

waves = ds_list_create();
ds_list_add(waves,[0,oEnemy,0,0]);
ds_list_add(waves,[0,oEnemy,0,100]);
ds_list_add(waves,[0,oEnemy,0,200]);
ds_list_add(waves,[0,oEnemy,1,300]);
ds_list_add(waves,[0,oEnemy,1,400]);
ds_list_add(waves,[0,oEnemy,1,500]);
ds_list_add(waves,[0,oEnemy,0,600]);
ds_list_add(waves,[0,oEnemy,0,700]);

ds_list_add(waves,[1,oEnemy,0,10]);
ds_list_add(waves,[1,oEnemy,0,200]);
ds_list_add(waves,[1,oEnemy,0,300]);
ds_list_add(waves,[1,oEnemy,0,400]);
ds_list_add(waves,[1,oEnemy,0,500]);
ds_list_add(waves,[1,oEnemy,0,600]);
ds_list_add(waves,[1,oEnemy,0,700]);
ds_list_add(waves,[1,oEnemy,0,800]);

ds_list_add(waves,[2,oEnemy,1,0]);
ds_list_add(waves,[2,oEnemy,1,100]);
ds_list_add(waves,[2,oEnemy,1,200]);
ds_list_add(waves,[2,oEnemy,1,300]);
ds_list_add(waves,[2,oEnemy,1,400]);
ds_list_add(waves,[2,oEnemy,1,500]);
ds_list_add(waves,[2,oEnemy,1,600]);
ds_list_add(waves,[2,oEnemy,1,700]);

ds_list_add(waves,[3,oEnemy,1,100]);
ds_list_add(waves,[3,oEnemy,1,200]);
ds_list_add(waves,[3,oEnemy,1,300]);
ds_list_add(waves,[3,oEnemy,1,400]);
ds_list_add(waves,[3,oEnemy,1,500]);
ds_list_add(waves,[3,oEnemy,1,600]);
ds_list_add(waves,[3,oEnemy,1,700]);
ds_list_add(waves,[3,oEnemy,1,800]);

ds_list_add(waves,[4,oEnemy,1,0]);
ds_list_add(waves,[4,oEnemy,1,100]);
ds_list_add(waves,[4,oEnemy,1,200]);
ds_list_add(waves,[4,oEnemy,1,300]);

spawn[0,0] = 200;  // X (left)
spawn[0,1] = 1700; // Y (left)
spawn[1,0] = 1250; // X (right)
spawn[1,1] = 1700; // Y (right)
