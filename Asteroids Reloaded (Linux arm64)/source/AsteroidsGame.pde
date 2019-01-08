Spaceship N49;
Spaceship N108;
Star [] N47;
eShield N37;

ArrayList <Asteroid> N48;
ArrayList <Bossteroid> N50;
ArrayList <MegaBossteroid> N51;
ArrayList <Iceroid> N52;
ArrayList <IceShard> N53;
ArrayList <Bullet> N46;
ArrayList <sideBullet> N45;
ArrayList <sideBullet2> N44;
ArrayList <Missiles> N43;
ArrayList <RotShield> N42;
ArrayList <WingCannon> N41;
ArrayList <WingCannon2> N40;
ArrayList <RandomCannon> N39;
ArrayList <Laser> N38;

ArrayList <HealthPack> N54;
ArrayList <RegCoins> N55;
ArrayList <BossCoins> N56;
ArrayList <MegaBossCoins> N57;
ArrayList <IceCoins> N58;


ArrayList <Bullet> N106;
ArrayList <sideBullet> N105;
ArrayList <sideBullet2> N104;
ArrayList <Missiles> N103;
ArrayList <RotShield> N102;
ArrayList <WingCannon> N101;
ArrayList <WingCannon2> N100;
ArrayList <RandomCannon> N99;
ArrayList <Laser> N98;

color asteroids;
color asteroidsHit;
color bossteroid;
color megaBossteroid;
color megaBossteroidHit;
color iceroids;
color iceroidsHit;

boolean qPressed = false;
boolean wPressed = false;
boolean ePressed = false;
boolean dPressed = false;
boolean hPressed = false;
boolean rPressed = false;
boolean gPressed = false;
boolean Scan = false;
boolean isOverShip = false;
boolean flashBack = false;
boolean Bspawn = false;
boolean megaBspawn = false;
boolean icerSpawn = false;

int aid = 0;
int buff = 0;
float shieldCount = 0;
float laserCharge = 0;
float eShieldCount = 0;
float Pct = 0.0;
int rotSpin = 0; 
int highScore = 0;
int asteroidsKill = 0;
int shieldGen = 0;
float health = 100.0;
float maxHealth = 100.0;
int stage = 1;
int money = 0;
int bossCount = 0;
int BossCount = 0;
int MegaBossCount = 0;
int loadBar = 0;
float Percent = 0;
int BulletCount = 0;
int megaBossCount = 0;
int asteroidsCount = 0;
int iceroidsCount = 0;
float flash = 0;
float k = 0;
int difficulty = 0;
int bBuff = 0;
int mbBuff = 0;
int iBuff = 0;
int iceDmgBuff = 0;
int bossX = 0;
int bossY = 0;
int megaBossX = 0;
int megaBossY = 0;
int iceX = 0;
int iceY = 0;


//Upgrades

 //MainCannon
int mcUpCost = 20;
int mcDamage = 0;
int mcLevel = 1;
float mcLvBar = 5.09375;
float mcWidth = 0;
float mcHeight = 0;

 //WingCannon
int wcUpCost = 30;
int wcDamage = 0;
int wcLevel = 1;
float wcLvBar = 5.09375;
float wcWidth = 0;
float wcHeight = 0;

 //SideCannon
int scUpCost = 15;
int scDamage = 0;
int scLevel = 1;
float scLvBar = 5.09375;

//RandomCannon
int rcUpCost = 15;
int rcDamage = 0;
int rcLevel = 1;
float rcLvBar = 5.09375;
float rcWidth = 0;
float rcHeight = 0;

 //Mega Bomb
int mbUpCost = 30;
int mbDamage = 0;
int mbLevel = 1;
float mbLvBar = 5.09375;

 //Laser
int lsUpCost = 25;
int lsDamage = 0;
int lsLevel = 1;
float lsLvBar = 5.09375;

 //Energy Shield
int esUpCost = 15;
int esDamage = 0;
int esLevel = 1;
float esLvBar = 5.09375;

 //Fire Rate 
 int frUpCost = 200;
 int mcFireUp = 0;
 int wcFireUp = 0;
 int rcFireUp = 0;
 int frLevel = 1;
 float frLvBar = 32.6;
 
 //Ship Health
 int mhUpCost = 130;
 int mhLevel = 1;
 float mhLvBar = 32.6;

 
 float beginX = 450;  
 float beginY = 1000;  
 float endX = 0;
 float endY = 0;
 float dX;          
 float dY;          
 float x = 0.0;        
 float y = 0.0;       
 float spd = 0.05;   
 float p = 0.0;
 
 //Ship Respawn Rings
 
 float I = 1;
 float I2 = 1;
 float I3 = 1;
 float I4 = 1;
 float I5 = 1;
 
 //Bossteroids Destroyed Rings
 
 float B = 1;
 float B2 = 1;
 
 //MegaBossteroids Destroyed Rings
 
 float MB = 1;
 float MB2 = 1;
 float MB3 = 1;
 
 //Iceroids Destroyed Rings
 
 float Ir = 1;
 
 
 
 import ddf.minim.*;
 import ddf.minim.effects.*;

Minim minim;
AudioPlayer loading;

Minim minim2;
AudioPlayer shooting;

Minim minim3;
AudioPlayer asteroidsDead;

Minim minim4;
AudioPlayer bossteroidsDead;

Minim minim5;
AudioPlayer iceShard;

Minim minim6;
AudioPlayer iceroid;

Minim minim7;
AudioPlayer megaBossExplosion;

Minim minim8;
AudioPlayer megaBomb;

Minim minim9;
AudioPlayer Laser;

Minim minim10;
AudioPlayer EnergyShield;

Minim minim11;
AudioPlayer Coins;

Minim minim12;
AudioPlayer HealthPack;

Minim minim13;
AudioPlayer Upgrade;

Minim minim14;
AudioPlayer ShipExplode;

Minim minim15;
AudioPlayer ShipYard;

Minim minim16;
AudioPlayer Scanning;

public void setup() 
{
 
 size(900, 900);
 surface.setResizable(true);
  
  minim = new Minim(this);
  loading = minim.loadFile("LoadingScreen.mp3", 2048);
  
  minim2 = new Minim(this);
  shooting = minim2.loadFile("ShootingSounds.wav");
  
  minim3 = new Minim(this);
  asteroidsDead = minim3.loadFile("Explosion.wav");
  
  minim4 = new Minim(this);
  bossteroidsDead = minim4.loadFile("Explosion.mp3");
  
  minim5 = new Minim(this);
  iceShard = minim5.loadFile("IceShard.wav");
  
  minim6 = new Minim(this);
  iceroid = minim6.loadFile("Iceroids.mp3");
  
  minim7 = new Minim(this);
  megaBossExplosion = minim7.loadFile("MegaBossExplosion.mp3");
  
  minim8 = new Minim(this);
  megaBomb = minim8.loadFile("MegaBomb.aiff");
  
  minim9 = new Minim(this);
  Laser = minim9.loadFile("Laser.wav");
  
  minim10 = new Minim(this);
  EnergyShield = minim10.loadFile("EnergyShield.wav");
  
  minim11 = new Minim(this);
  Coins = minim11.loadFile("Coins.wav");
  
  minim12 = new Minim(this);
  HealthPack = minim12.loadFile("HealthPack.wav");
  
  minim13 = new Minim(this);
  Upgrade = minim13.loadFile("Upgrade.wav");
  
  minim14 = new Minim(this);
  ShipExplode = minim14.loadFile("ShipExplode.wav");
  
  minim15 = new Minim(this);
  ShipYard = minim15.loadFile("ShipYard.mp3");
  
  minim16 = new Minim(this);
  Scanning = minim16.loadFile("Scanning.wav");

 
  
  

  
  
 asteroids = color(170, 161, 161);
 asteroidsHit = color(198, 190, 190);
 bossteroid = color(111, 111, 102);
 megaBossteroid = color(167, 71, 32);
 megaBossteroidHit = color(216, 148, 120);
 iceroids = color(217, 250, 252);
 iceroidsHit = color(232, 232, 232);
 
 
 N49 = new Spaceship();
 N49.setColor(255);
 N49.setX(450);
 N49.setY(450);
 N49.setPointDirection(270);
 
 N108 = new Spaceship();
 N108.setColor(255);
 N108.setX(450);
 N108.setY(450);
 N108.setPointDirection(270);
 
 N37 = new eShield(N49);
 
 N46 = new ArrayList<Bullet>();
 N45 = new ArrayList<sideBullet>();
 N44 = new ArrayList<sideBullet2>();
 N43 = new ArrayList<Missiles>();
 N42 = new ArrayList<RotShield>();
 N41 = new ArrayList<WingCannon>();
 N40 = new ArrayList<WingCannon2>();
 N39 = new ArrayList<RandomCannon>();
 N38 = new ArrayList<Laser>();
 
 N53 = new ArrayList<IceShard>();
 
 N54 = new ArrayList<HealthPack>();
 N55 = new ArrayList<RegCoins>();
 N56 = new ArrayList<BossCoins>();
 N57 = new ArrayList<MegaBossCoins>();
 N58 = new ArrayList<IceCoins>();

 N106 = new ArrayList<Bullet>();
 N105 = new ArrayList <sideBullet>();
 N104 = new ArrayList <sideBullet2>();
 N103 = new ArrayList <Missiles>();
 N102 = new ArrayList <RotShield>();
 N101 = new ArrayList <WingCannon>();
 N100 = new ArrayList <WingCannon2>();
 N99 = new ArrayList <RandomCannon>();
 N98 = new ArrayList <Laser>();

 N42.add(new RotShield(N49));

 N47 = new Star[1000];
 for(int i = 0; i < N47.length; i++){
   N47[i] = new Star();
 }
 

 
 
}


public void draw(){

 frameRate(120);

 background(33, 32, 32);
 
 loading.play();
 
 if(eShieldCount <= 0){
   ePressed = false;
 }
 
 if(health <= 0){
   dPressed = false;
 }
 
 if(laserCharge == 0){
   wPressed = false;
 }
 
 
  k = k + 0.07;
  flash = 500 + 500*sin(k);
  

 
 dX = endX - beginX;
 dY = endY - beginY;
 
  p += spd;
  if (p < 1.0) {
    x = beginX + (p * dX);
    y = beginY + (p * dY);
  }
  
  p = 0.0;
  beginX = x;
  beginY = y;
  endX = mouseX;
  endY = mouseY;
  dX = endX - beginX;
  dY = endY - beginY;
  

 //Stars Show
 
 for(int nI = 0; nI < N47.length; nI++){
   strokeWeight(1);
   N47[nI].show();
   N47[nI].move();
 }
 
 //Health Pack Show
 for(int nI = 0; nI < N54.size(); nI++){
   N54.get(nI).show();
   if(!dPressed && !rPressed && !gPressed && !Scan){
     N54.get(nI).move();
   }
 }
 
 //Regular Coins Show
 for(int nI = 0; nI < N55.size(); nI++){
   N55.get(nI).show();
   if(!dPressed && !rPressed && !gPressed && !Scan){
     N55.get(nI).move();
   }
 }
 
 //Bossteroid Coins Show
 for(int nI = 0; nI < N56.size(); nI++){
   N56.get(nI).show();
   if(!dPressed && !rPressed && !gPressed && !Scan){
     N56.get(nI).move();
   }
 }
 
 //MegaBossteroid Coins Show
 for(int nI = 0; nI < N57.size(); nI++){
   N57.get(nI).show();
   if(!dPressed && !rPressed && !gPressed && !Scan){
     N57.get(nI).move();
   }
 }
 
 //Iceroid Coins Show
 for(int nI = 0; nI < N58.size(); nI++){
   N58.get(nI).show();
   if(!dPressed && !rPressed && !gPressed && !Scan){
     N58.get(nI).move();
   }
 }
 
 //Main Cannon Show
 for(int a = 0; a < N46.size(); a++){
    N46.get(a).show();
    N46.get(a).move();
    N46.get(a).setWidthAdd(mcWidth);
    N46.get(a).setHeightAdd(mcHeight);
    N46.get(a).accelerate(0.9);
     if(N46.get(a).getX() > width + 100 || N46.get(a).getY() > height + 100 || N46.get(a).getX() < -100 || N46.get(a).getY() < -100){
       N46.remove(a);
     }
  }
  
  //sideBullet Show
  for(int b = 0; b < N45.size(); b++){
    N45.get(b).show();
    N45.get(b).move();
     if(N45.get(b).getX() > width + 100 || N45.get(b).getY() > height + 100 || N45.get(b).getX() < -100 || N45.get(b).getY() < -100){
       N45.remove(b);
     }
  }

  //sideBullet2 Show
  for(int b = 0; b < N44.size(); b++){
    N44.get(b).show();
    N44.get(b).move();
     if(N44.get(b).getX() > width + 100 || N44.get(b).getY() > height + 100 || N44.get(b).getX() < -100 || N44.get(b).getY() < -100){
       N44.remove(b);
     }
  }
  
  
  //RandomCannon show
  for(int b = 0; b < N39.size(); b++){
    N39.get(b).show();
    N39.get(b).move();
    N39.get(b).setWidthAdd(rcWidth);
    N39.get(b).setHeightAdd(rcHeight);
     if(N39.get(b).getX() > width + 100 || N39.get(b).getY() > height + 100 || N39.get(b).getX() < -100 || N39.get(b).getY() < -100){
       N39.remove(b);
     }
  }

  //Mega Bomb Show
  for(int b = 0; b < N43.size(); b++){
    N43.get(b).show();
    N43.get(b).move();
     if(N43.get(b).getX() > width + 100 || N43.get(b).getY() > height + 100 || N43.get(b).getX() < -100 || N43.get(b).getY() < -100){
       N43.remove(b);
     }
  }
  
  //Ice Shard Show
  for(int b = 0; b < N53.size(); b++){
    N53.get(b).show();
    N53.get(b).move();
     if(N53.get(b).getX() > width + 100 || N53.get(b).getY() > height + 100 || N53.get(b).getX() < -100 || N53.get(b).getY() < -100){
       N53.remove(b);
     }
  }
  
  //Laser Show
  for(int b = 0; b < N38.size(); b++){
    N38.get(b).show();
    N38.get(b).move();
     if(N38.get(b).getX() > width + 100 || N38.get(b).getY() > height + 100 || N38.get(b).getX() < -100 || N38.get(b).getY() < -100){
       N38.remove(b);
     }
  }
  
  //WingCannon Show
  for(int b = 0; b < N41.size(); b++){
    N41.get(b).show();
    N41.get(b).move();
    N41.get(b).setWidthAdd(wcWidth);
    N41.get(b).setHeightAdd(wcHeight);
    N41.get(b).accelerate(0.29);
     if(N41.get(b).getX() > width + 100 || N41.get(b).getY() > height + 100 || N41.get(b).getX() < -100 || N41.get(b).getY() < -100){
       N41.remove(b);
     }
  }
  
  //WingCannon2 Show
  for(int b = 0; b < N40.size(); b++){
    N40.get(b).show();
    N40.get(b).move();
    N40.get(b).setWidthAdd(wcWidth);
    N40.get(b).setHeightAdd(wcHeight);
    N40.get(b).accelerate(0.29);
     if(N40.get(b).getX() > width + 100 || N40.get(b).getY() > height + 100 || N40.get(b).getX() < -100 || N40.get(b).getY() < -100){
       N40.remove(b);
     }
  }
  
  //RotShield Regen
  if(N42.size() < 1 && shieldGen == 3){
   N42.add(new RotShield(N49)); 
   shieldGen = shieldGen - 3;
  }
  
  //RotShield Show
  for(int b = 0; b < N42.size(); b++){
    rotSpin = rotSpin + 7;
    N42.get(b).show();
    N42.get(b).setPointDirection(rotSpin);
    N42.get(b).setX(N49.getX());
    N42.get(b).setY(N49.getY());
  }
  
  if(keyPressed) {

   if(qPressed && shieldCount > 0 && health > 0 && !dPressed && !rPressed && !gPressed && !Scan){
     shield();
     shieldCount--;
   }
    
  if(wPressed && laserCharge > 0 && health > 0 && !dPressed && !rPressed && !gPressed && !Scan){
    laser();
    laserCharge--;
    fill(207 + (int)(Math.random()*61) - 30, 255 + (int)(Math.random()*61) - 30, 0);
    rect(x - 5, y, 10, -1000);
   }
   
   if(ePressed && eShieldCount > 0 && health > 0 && !dPressed && !rPressed && !gPressed && !Scan){
     if(frameCount % 1 == 0){
       EnergyShield.loop(0);
      }
     N37 = new eShield(N49);
     N37.show();
     eShieldCount--;
     spd = 0.015;
   } 
   
  
 
 }


   //Initial Asteroids Spawn
   if(frameCount == 570){
   N48 = new ArrayList<Asteroid>();
   for(int i = 0; i < 5; i++){
   N48.add(new Asteroid());
   N48.get(i).setX(width + 60);
   N48.get(i).setY(height + 60);
   N48.get(i).setDirectionX((Math.random()*2.4) - 1.2);
   N48.get(i).setDirectionY((Math.random()*2.4) - 1.2);
   N48.get(i).setHealth(700);
   N55.add(new RegCoins());
   N55.get(i).setX(N48.get(i).getX());
   N55.get(i).setY(N48.get(i).getY());
   N55.get(i).setDirectionX(N48.get(i).getDirectionX());
   N55.get(i).setDirectionY(N48.get(i).getDirectionY());

 }
 
  N50 = new ArrayList<Bossteroid>();
  N51 = new ArrayList<MegaBossteroid>();
  N52 = new ArrayList<Iceroid>();
}
 
   //Asteroids Spawn

   if(frameCount > 571 && N48.size() == 0 && N50.size() == 0 && N51.size() == 0 && N52.size() == 0 && N55.size() == 0 && N56.size() == 0 && N57.size() == 0){
    buff += 10;
    N48 = new ArrayList<Asteroid>();
    for(int i = 0; i < 5 + difficulty; i++){
    N48.add(new Asteroid());
    N48.get(i).setX(width + 60);
    N48.get(i).setY(height + 60);
    N48.get(i).setDirectionX((Math.random()*2.4) - 1.2);
    N48.get(i).setDirectionY((Math.random()*2.4) - 1.2);
    N48.get(i).setHealth(700 + buff);
    N55.add(new RegCoins());
    N55.get(i).setX(N48.get(i).getX());
    N55.get(i).setY(N48.get(i).getY());
    N55.get(i).setDirectionX(N48.get(i).getDirectionX());
    N55.get(i).setDirectionY(N48.get(i).getDirectionY());
   }
   stage++;
   Bspawn = true;
   megaBspawn = true;
   icerSpawn = true;
   if(stage % 3 == 0){
     difficulty++;
     N54.add(new HealthPack());
   }
 }
 
 
 //Bossteroid Spawn
 if(frameCount > 571 && Bspawn && N50.size() == 0 && stage % 4 == 0){
   bBuff += 1000;
   N50 = new ArrayList<Bossteroid>();
   for(int nI = 0; nI < 1; nI++){
   N50.add(new Bossteroid());
   N50.get(nI).setX(450 + (int)(Math.random()*601) - 300);
   N50.get(nI).setY(height + 210);
   N50.get(nI).setDirectionX((Math.random()*2.4) - 1.2);
   N50.get(nI).setDirectionY((Math.random()*2.4) - 1.2);
   N50.get(nI).setHealth(15000 + bBuff);
   N54.add(new HealthPack());
   N54.get(nI).setX(N50.get(nI).getX() + 30);
   N54.get(nI).setY(N50.get(nI).getY() + 30);
   N54.get(nI).setDirectionX(N50.get(nI).getDirectionX());
   N54.get(nI).setDirectionY(N50.get(nI).getDirectionY());
   N56.add(new BossCoins());
   N56.get(nI).setX(N50.get(nI).getX());
   N56.get(nI).setY(N50.get(nI).getY());
   N56.get(nI).setDirectionX(N50.get(nI).getDirectionX());
   N56.get(nI).setDirectionY(N50.get(nI).getDirectionY());
   }
   bossCount++;
   B = 1;
   B2 = 1;
   Bspawn = false;
 }
 
 //MegaBossteroid Spawn
 if(frameCount > 571 && megaBspawn && N51.size() == 0 && stage % 10 == 0){
   mbBuff += 3000;
   N51 = new ArrayList<MegaBossteroid>();
   for(int nII = 0; nII < 1; nII++){
   N51.add(new MegaBossteroid());
   N51.get(nII).setX(450 + (int)(Math.random()*601) - 300);
   N51.get(nII).setY(height + 210);
   N51.get(nII).setDirectionX((Math.random()*1.2) - 0.6);
   N51.get(nII).setDirectionY((Math.random()*1.2) - 0.6);
   N51.get(nII).setHealth(50000 + mbBuff);
   N54.add(new HealthPack());
   N54.get(nII).setX(N51.get(nII).getX() + 45);
   N54.get(nII).setY(N51.get(nII).getY() + 45);
   N54.get(nII).setDirectionX(N51.get(nII).getDirectionX());
   N54.get(nII).setDirectionY(N51.get(nII).getDirectionY());
   N57.add(new MegaBossCoins());
   N57.get(nII).setX(N51.get(nII).getX());
   N57.get(nII).setY(N51.get(nII).getY());
   N57.get(nII).setDirectionX(N51.get(nII).getDirectionX());
   N57.get(nII).setDirectionY(N51.get(nII).getDirectionY());
   }
   MB = 1;
   MB2 = 1;
   MB3 = 1;
   megaBossCount++;
   megaBspawn = false;
 }
 
 //Iceroids Spawn
 if(frameCount > 571 && icerSpawn && N52.size() == 0 && stage % 2 == 0){
   iBuff += 30;
   iceDmgBuff += 1;
   N52 = new ArrayList<Iceroid>();
   for(int NI = 0; NI < 1; NI++){
     N52.add(new Iceroid());
     N52.get(NI).setX(width + 60);
     N52.get(NI).setY(height + 60);
     N52.get(NI).setDirectionX((Math.random()*2.4) - 1.2);
     N52.get(NI).setDirectionY((Math.random()*2.4) - 1.2);;
     N52.get(NI).setHealth(1400 + iBuff);
     N58.add(new IceCoins());
     N58.get(NI).setX(N52.get(NI).getX());
     N58.get(NI).setY(N52.get(NI).getY());
     N58.get(NI).setDirectionX(N52.get(NI).getDirectionX());
     N58.get(NI).setDirectionY(N52.get(NI).getDirectionY());
   }
   Ir = 1;
   icerSpawn = false;
 }
 
 //isOverShip
 
 float shipCheck = dist(N49.getX(), N49.getY(), mouseX, mouseY);
 if(shipCheck < 28){
   isOverShip = true;
 }
 else{
   isOverShip = false;
 }
 
 //Bossteroid Collision
 
 
 //ship Collision
 if(frameCount > 571){
 for(int nI = 0; nI < N50.size(); nI++){
   N50.get(nI).setColor(bossteroid);
   N50.get(nI).show();
   noFill();
   strokeWeight(2);
   stroke(255, 0, 0, flash);
   ellipse(N50.get(nI).getX(), N50.get(nI).getY(), 270, 270);
   if(health >= 0 && !dPressed && !rPressed && !gPressed && !Scan){
     N50.get(nI).move();
   }
   N50.get(nI).spin();
   float ds = dist(N49.getX(), N49.getY(), N50.get(nI).getX(), N50.get(nI).getY());
   if(ds < 195 && !ePressed){
     health = health - 2;
     N50.get(nI).setColor(asteroidsHit - 20);
     N50.get(nI).show();
     noFill();
   strokeWeight(2);
   stroke(255, 0, 0);
   ellipse(N50.get(nI).getX(), N50.get(nI).getY(), 270, 270);
     N50.get(nI).damage(10);
   }
   if(ds < 220 && ePressed){
     N50.get(nI).setColor(asteroidsHit - 20);
     N50.get(nI).show();
     noFill();
   strokeWeight(2);
   stroke(255, 0, 0);
   ellipse(N50.get(nI).getX(), N50.get(nI).getY(), 270, 270);
     N50.get(nI).damage(85 + esDamage);
   }
   if(health <= 0){
     N49.setX(10000);
     N49.setY(10000);
     fill(255);
     textSize(35);
     text("Game Over, Press 'H' To Restart!", 170, 330);
     textSize(18);
     text("Asteroids Destroyed: " + asteroidsCount, 170, 480);
     text("Iceroids Destroyed: " + iceroidsCount, 170, 510);
     text("Bossteroids Destroyed: " + BossCount, 170, 540);
     text("Mega Bossteroids Destroyed " + MegaBossCount, 170, 570);
   }
   if(N50.get(nI).getHealth() <= 0){
     N50.remove(nI);
     bossteroidsDead.loop(0);
     asteroidsKill += 500;
     BossCount++;
     money += 90 + ((int)(Math.random()*21) - 10);
   }
 if(N50.size() > 0){   
   bossX = N50.get(0).getX();
   bossY = N50.get(0).getY();
 }
 
}

//RotShield Collision
for(int nI = 0; nI < N50.size(); nI++)
  for(int a = 0; a < N42.size(); a++){
   float d9 = dist(N42.get(a).getX(), N42.get(a).getY(), N50.get(nI).getX(), N50.get(nI).getY());
   if(d9 < 100){
    N50.get(nI).setColor(asteroidsHit - 20);
    N50.get(nI).show();
    N50.get(nI).damage(500);
    N42.remove(a);
    break;
   }
   if(N50.get(nI).getHealth() <= 0){
     N50.remove(nI);
     bossteroidsDead.loop(0);
     asteroidsKill += 500;
     BossCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 8;
     }
     if(laserCharge < 150){
       laserCharge += 10;
     }
     if(eShieldCount < 150){
       eShieldCount += 10;
     }
     money += 90 + ((int)(Math.random()*21) - 10);
     break;
   }
  }

//Main Cannon Collision
for(int nI = 0; nI < N50.size(); nI++)
  for(int a = 0; a < N46.size(); a++){
   float d2 = dist(N46.get(a).getX(), N46.get(a).getY(), N50.get(nI).getX(), N50.get(nI).getY());
   if(d2 < 170){
    N50.get(nI).setColor(asteroidsHit - 20);
    N50.get(nI).show();
    N50.get(nI).damage(60 + mcDamage);
    N46.remove(a);
    break;
   }
   if(N50.get(nI).getHealth() <= 0){
     N50.remove(nI);
     bossteroidsDead.loop(0);
     asteroidsKill += 500;
     BossCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 8;
     }
     if(laserCharge < 150){
       laserCharge += 10;
     }
     if(eShieldCount < 150){
       eShieldCount += 10;
     }
     money += 90 + ((int)(Math.random()*21) - 10);
     if(N42.size() < 1){
       shieldGen++;
     }
     
     break;
   }
  }

//SideBullet Collision
for(int nI = 0; nI < N50.size(); nI++)
   for(int o = 0; o < N45.size(); o++){
   float d = dist(N45.get(o).getX(), N45.get(o).getY(), N50.get(nI).getX(), N50.get(nI).getY());
   if(d < 170){
     N50.get(nI).damage(10 + scDamage);
     N50.get(nI).setColor(asteroidsHit - 20);
     N50.get(nI).show();
     N45.remove(o);
     break;
   }
   if(N50.get(nI).getHealth() <= 0){
     N50.remove(nI);
     bossteroidsDead.loop(0);
     asteroidsKill += 500;
     BossCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 8;
     }
     if(laserCharge < 150){
       laserCharge += 10;
     }
     if(eShieldCount < 150){
       eShieldCount += 10;
     }
     money += 90 + ((int)(Math.random()*21) - 10);
     if(N42.size() < 1){
       shieldGen++;
     }
     break;
   }
  }

//SideBullet 2 Collision
 for(int nI = 0; nI < N50.size(); nI++)
  for(int a = 0; a < N44.size(); a++){
   float d1 = dist(N44.get(a).getX(), N44.get(a).getY(), N50.get(nI).getX(), N50.get(nI).getY());
   if(d1 < 170){
     N50.get(nI).damage(10 + scDamage);
     N50.get(nI).setColor(asteroidsHit - 20);
     N50.get(nI).show();
     N44.remove(a);
     break;
   }
   if(N50.get(nI).getHealth() <= 0){
     N50.remove(nI);
     bossteroidsDead.loop(0);
     asteroidsKill += 500;
     BossCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 8;
     }
     if(laserCharge < 150){
       laserCharge += 10;
     }
     if(eShieldCount < 150){
       eShieldCount += 10;
     }
     money += 90 + ((int)(Math.random()*21) - 10);
     if(N42.size() < 1){
       shieldGen++;
     }
     break;
   }
  }
  
  //RandomCannon Collision
  for(int nI = 0; nI < N50.size(); nI++)
  for(int a = 0; a < N39.size(); a++){
   float d1 = dist(N39.get(a).getX(), N39.get(a).getY(), N50.get(nI).getX(), N50.get(nI).getY());
   if(d1 < 170){
     N50.get(nI).damage(20 + rcDamage);
     N50.get(nI).setColor(asteroidsHit - 20);
     N50.get(nI).show();
     N39.remove(a);
     break;
   }
   if(N50.get(nI).getHealth() <= 0){
     N50.remove(nI);
     bossteroidsDead.loop(0);
     asteroidsKill += 500;
     BossCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 8;
     }
     if(laserCharge < 150){
       laserCharge += 10;
     }
     if(eShieldCount < 150){
       eShieldCount += 10;
     }
     money += 90 + ((int)(Math.random()*21) - 10);
     if(N42.size() < 1){
       shieldGen++;
     }
     break;
   }
  }
  
  //WingCannon Collision
  for(int nI = 0; nI < N50.size(); nI++)
  for(int a = 0; a < N41.size(); a++){
   float d1 = dist(N41.get(a).getX(), N41.get(a).getY(), N50.get(nI).getX(), N50.get(nI).getY());
   if(d1 < 170){
     N50.get(nI).damage(75 + wcDamage);
     N50.get(nI).setColor(asteroidsHit - 20);
     N50.get(nI).show();
     N41.remove(a);
     break;
   }
   if(N50.get(nI).getHealth() <= 0){
     N50.remove(nI);
     bossteroidsDead.loop(0);
     asteroidsKill += 500;
     BossCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 8;
     }
     if(laserCharge < 150){
       laserCharge += 10;
     }
     if(eShieldCount < 150){
       eShieldCount += 10;
     }
     money += 90 + ((int)(Math.random()*21) - 10);
     if(N42.size() < 1){
       shieldGen++;
     }
     break;
   }
  }
  
  //WingCannon2 Collision
  for(int nI = 0; nI < N50.size(); nI++)
  for(int a = 0; a < N40.size(); a++){
   float d1 = dist(N40.get(a).getX(), N40.get(a).getY(), N50.get(nI).getX(), N50.get(nI).getY());
   if(d1 < 170){
     N50.get(nI).damage(75 + wcDamage);
     N50.get(nI).setColor(asteroidsHit - 20);
     N50.get(nI).show();
     N40.remove(a);
     break;
   }
   if(N50.get(nI).getHealth() <= 0){
     N50.remove(nI);
     bossteroidsDead.loop(0);
     asteroidsKill += 500;
     BossCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 8; 
     }
     if(laserCharge < 150){
       laserCharge += 10;
     }
     if(eShieldCount < 150){
       eShieldCount += 10;
     }
     money += 90 + ((int)(Math.random()*21) - 10);
     if(N42.size() < 1){
       shieldGen++;
     }
     break;
   }
  }
  
//MegaBomb Collision
  for(int nI = 0; nI < N50.size(); nI++)
  for(int a = 0; a < N43.size(); a++){
   float d3 = dist(N43.get(a).getX(), N43.get(a).getY(), N50.get(nI).getX(), N50.get(nI).getY());
   if(d3 < 170){
     N50.get(nI).setColor(asteroidsHit - 20);
     N50.get(nI).damage(150 + mbDamage);
     N50.get(nI).show();
     N43.remove(a);
     break;
   }
   if(N50.get(nI).getHealth() <= 0){
     N50.remove(nI);
     bossteroidsDead.loop(0);
     asteroidsKill += 500;
     BossCount++;
     money += 90 + ((int)(Math.random()*21) - 10);
     break;
   }
  }
 
//Laser Collision
  for(int nI = 0; nI < N50.size(); nI++)
  for(int a = 0; a < N38.size(); a++){
   float d3 = dist(N38.get(a).getX(), N38.get(a).getY(), N50.get(nI).getX(), N50.get(nI).getY());
   if(d3 < 190){
     N50.get(nI).setColor(asteroidsHit - 20);
     N50.get(nI).damage(140 + lsDamage);
     N50.get(nI).show();
     N38.remove(a);
     break;
   }
   if(N50.get(nI).getHealth() <= 0){
     N50.remove(nI);
     bossteroidsDead.loop(0);
     asteroidsKill += 500;
     BossCount++;
     money += 90 + ((int)(Math.random()*21) - 10);
     break;
   }
  }
  
  
  
   if(bossteroidsDead.isPlaying()){
    noFill();
    stroke(255, 0, 51);
    strokeWeight(4);
    B *= 1.1;
    B2 *= 1.08;
    ellipse(bossX, bossY, B, B);
    ellipse(bossX, bossY, B2, B2);
    stroke(255);
    strokeWeight(1);
 }







 
 //MegaBossteroid Collision
 
 //ship Collision
 for(int nI = 0; nI < N51.size(); nI++){
   N51.get(nI).setColor(megaBossteroid);
   N51.get(nI).show();
   noFill();
   strokeWeight(2);
   stroke(0, 255, 0, flash);
   ellipse(N51.get(nI).getX(), N51.get(nI).getY(), 365, 365);
   if(health >= 0 && !dPressed && !rPressed && !gPressed && !Scan){
     N51.get(nI).move();
   }
   N51.get(nI).spin();
   float ds = dist(N49.getX(), N49.getY(), N51.get(nI).getX(), N51.get(nI).getY());
   if(ds < 215 && !ePressed){
     health = health - 3;
     N51.get(nI).setColor(megaBossteroidHit);
     N51.get(nI).show();
     N51.get(nI).damage(20);
   }
   if(ds < 240 && ePressed){
     N51.get(nI).setColor(megaBossteroidHit);
     N51.get(nI).show();
     N51.get(nI).damage(105 + esDamage);
   }
   if(health <= 0){
     N49.setX(10000);
     N49.setY(10000);
     fill(255);
     textSize(35);
     text("Game Over, Press 'H' To Restart!", 170, 330);
     textSize(18);
     text("Asteroids Destroyed: " + asteroidsCount, 170, 480);
     text("Iceroids Destroyed: " + iceroidsCount, 170, 510);
     text("Bossteroids Destroyed: " + BossCount, 170, 540);
     text("Mega Bossteroids Destroyed " + MegaBossCount, 170, 570);
   }
   if(N51.get(nI).getHealth() <= 0){
     N51.remove(nI);
     megaBossExplosion.loop(1);
     asteroidsKill += 1500;
     MegaBossCount++;
     money += 350 + ((int)(Math.random()*31) - 15);
   }
   
   if(N51.size() > 0){   
   megaBossX = N51.get(0).getX();
   megaBossY = N51.get(0).getY();
 }
 
}

//RotShield Collision
for(int nI = 0; nI < N51.size(); nI++)
  for(int a = 0; a < N42.size(); a++){
   float d9 = dist(N42.get(a).getX(), N42.get(a).getY(), N51.get(nI).getX(), N51.get(nI).getY());
   if(d9 < 100){
    N51.get(nI).setColor(megaBossteroidHit);
    N51.get(nI).show();
    N51.get(nI).damage(100);
    N42.remove(a);
    break;
   }
   if(N51.get(nI).getHealth() <= 0){
     N51.remove(nI);
     megaBossExplosion.loop(1);
     asteroidsKill += 1500;
     MegaBossCount++;
     N54.add(new HealthPack());
     if(shieldCount < 100){
     shieldCount = shieldCount + 25;
     }
     if(laserCharge < 150){
       laserCharge += 35;
     }
     if(eShieldCount < 150){
       eShieldCount += 35;
     }     
     money += 350 + ((int)(Math.random()*31) - 15);
     break;
   }
  }

//Main Cannon Collision
for(int nI = 0; nI < N51.size(); nI++)
  for(int a = 0; a < N46.size(); a++){
   float d2 = dist(N46.get(a).getX(), N46.get(a).getY(), N51.get(nI).getX(), N51.get(nI).getY());
   if(d2 < 190){
    N51.get(nI).setColor(megaBossteroidHit);
    N51.get(nI).show();
    N51.get(nI).damage(65 + 6*mcDamage);
    N46.remove(a);
    break;
   }
   if(N51.get(nI).getHealth() <= 0){
     N51.remove(nI);
     megaBossExplosion.loop(1);
     asteroidsKill += 1500;
     MegaBossCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 25;
     }
     if(laserCharge < 150){
       laserCharge += 35;
     }
     if(eShieldCount < 150){
       eShieldCount += 35;
     }
     money += 350 + ((int)(Math.random()*31) - 15);
     if(N42.size() < 1){
       shieldGen++;
     }
     
     break;
   }
  }

//SideBullet Collision
for(int nI = 0; nI < N51.size(); nI++)
   for(int o = 0; o < N45.size(); o++){
   float d = dist(N45.get(o).getX(), N45.get(o).getY(), N51.get(nI).getX(), N51.get(nI).getY());
   if(d < 190){
     N51.get(nI).damage(15 + 3*scDamage);
     N51.get(nI).setColor(megaBossteroidHit);
     N51.get(nI).show();
     N45.remove(o);
     break;
   }
   if(N51.get(nI).getHealth() <= 0){
     N51.remove(nI);
     megaBossExplosion.loop(1);
     asteroidsKill += 1500;
     MegaBossCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 25;
     }
     if(laserCharge < 150){
       laserCharge += 35;
     }
     if(eShieldCount < 150){
       eShieldCount += 35;
     }
     money += 350 + ((int)(Math.random()*31) - 15);
     if(N42.size() < 1){
       shieldGen++;
     }
     break;
   }
  }

//SideBullet 2 Collision
 for(int nI = 0; nI < N51.size(); nI++)
  for(int a = 0; a < N44.size(); a++){
   float d1 = dist(N44.get(a).getX(), N44.get(a).getY(), N51.get(nI).getX(), N51.get(nI).getY());
   if(d1 < 190){
     N51.get(nI).damage(15 + 3*scDamage);
     N51.get(nI).setColor(megaBossteroidHit);
     N51.get(nI).show();
     N44.remove(a);
     break;
   }
   if(N51.get(nI).getHealth() <= 0){
     N51.remove(nI);
     megaBossExplosion.loop(1);
     asteroidsKill += 1500;
     MegaBossCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 25;
     }
     if(laserCharge < 150){
       laserCharge += 35;
     }
     if(eShieldCount < 150){
       eShieldCount += 35;
     }
     money += 350 + ((int)(Math.random()*31) - 15);
     if(N42.size() < 1){
       shieldGen++;
     }
     break;
   }
  }
  
  //RandomCannon Collision
  for(int nI = 0; nI < N51.size(); nI++)
  for(int a = 0; a < N39.size(); a++){
   float d1 = dist(N39.get(a).getX(), N39.get(a).getY(), N51.get(nI).getX(), N51.get(nI).getY());
   if(d1 < 190){
     N51.get(nI).damage(25 + rcDamage*3);
     N51.get(nI).setColor(megaBossteroidHit);
     N51.get(nI).show();
     N39.remove(a);
     break;
   }
   if(N51.get(nI).getHealth() <= 0){
     N51.remove(nI);
     megaBossExplosion.loop(1);
     asteroidsKill += 1500;
     MegaBossCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 25;
     }
     if(laserCharge < 150){
       laserCharge += 35;
     }
     if(eShieldCount < 150){
       eShieldCount += 35;
     }
     money += 350 + ((int)(Math.random()*31) - 15);
     if(N42.size() < 1){
       shieldGen++;
     }
     break;
   }
  }
  
  //WingCannon Collision
  for(int nI = 0; nI < N51.size(); nI++)
  for(int a = 0; a < N41.size(); a++){
   float d1 = dist(N41.get(a).getX(), N41.get(a).getY(), N51.get(nI).getX(), N51.get(nI).getY());
   if(d1 < 190){
     N51.get(nI).damage(80 + 5*wcDamage);
     N51.get(nI).setColor(megaBossteroidHit);
     N51.get(nI).show();
     N41.remove(a);
     break;
   }
   if(N51.get(nI).getHealth() <= 0){
     N51.remove(nI);
     megaBossExplosion.loop(1);
     asteroidsKill += 1500;
     MegaBossCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 25;
     }
     if(laserCharge < 150){
       laserCharge += 35;
     }
     if(eShieldCount < 150){
       eShieldCount += 35;
     }
     money += 350 + ((int)(Math.random()*31) - 15);
     if(N42.size() < 1){
       shieldGen++;
     }
     break;
   }
  }
  
  //WingCannon2 Collision
  for(int nI = 0; nI < N51.size(); nI++)
  for(int a = 0; a < N40.size(); a++){
   float d1 = dist(N40.get(a).getX(), N40.get(a).getY(), N51.get(nI).getX(), N51.get(nI).getY());
   if(d1 < 190){
     N51.get(nI).damage(80 + 5*wcDamage);
     N51.get(nI).setColor(megaBossteroidHit);
     N51.get(nI).show();
     N40.remove(a);
     break;
   }
   if(N51.get(nI).getHealth() <= 0){
     N51.remove(nI);
     megaBossExplosion.loop(1);
     asteroidsKill += 1500;
     MegaBossCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 25; 
     }
     if(laserCharge < 150){
       laserCharge += 35;
     }
     if(eShieldCount < 150){
       eShieldCount += 35;
     }
     money += 350 + ((int)(Math.random()*31) - 15);
     if(N42.size() < 1){
       shieldGen++;
     }
     break;
   }
  }
  
//MegaBomb Collision
  for(int nI = 0; nI < N51.size(); nI++)
  for(int a = 0; a < N43.size(); a++){
   float d3 = dist(N43.get(a).getX(), N43.get(a).getY(), N51.get(nI).getX(), N51.get(nI).getY());
   if(d3 < 190){
     N51.get(nI).setColor(megaBossteroidHit);
     N51.get(nI).damage(175 + mbLevel);
     N51.get(nI).show();
     N43.remove(a);
     break;
   }
   if(N51.get(nI).getHealth() <= 0){
     N51.remove(nI);
     megaBossExplosion.loop(1);
     asteroidsKill += 1500;
     MegaBossCount++;
     money += 350 + ((int)(Math.random()*31) - 15);
     break;
   }
  }
 
//Laser Collision
  for(int nI = 0; nI < N51.size(); nI++)
  for(int a = 0; a < N38.size(); a++){
   float d3 = dist(N38.get(a).getX(), N38.get(a).getY(), N51.get(nI).getX(), N51.get(nI).getY());
   if(d3 < 210){
     N51.get(nI).setColor(megaBossteroidHit);
     N51.get(nI).damage(160 + 3*lsDamage);
     N51.get(nI).show();
     N38.remove(a);
     break;
   }
   if(N51.get(nI).getHealth() <= 0){
     N51.remove(nI);
     megaBossExplosion.loop(1);
     asteroidsKill += 1500;
     MegaBossCount++;
     money += 350 + ((int)(Math.random()*31) - 15);
     break;
   }
  }
  
  
  if(megaBossExplosion.isPlaying()){
    noFill();
    stroke(255, 205, 0);
    strokeWeight(4);
    MB *= 1.1;
    MB2 *= 1.08;
    MB3 *= 1.06;
    ellipse(megaBossX, megaBossY, MB, MB);
    ellipse(megaBossX, megaBossY, MB2, MB2);
    ellipse(megaBossX, megaBossY, MB3, MB3);
    stroke(255);
    strokeWeight(1);
 }
  
  
  
  
  
  
  
  
//Iceroids Collision



   strokeWeight(2);
//ship Collision
 for(int nI = 0; nI < N52.size(); nI++){
   N52.get(nI).setColor(iceroids);
   N52.get(nI).show();
   
   if(N52.size() > 0 && health >= 0 && !dPressed && !rPressed && !gPressed && !Scan){
     N52.get(nI).move();
   }
   N52.get(nI).spin();
   float ds = dist(N49.getX(), N49.getY(), N52.get(nI).getX(), N52.get(nI).getY());
   if(ds < 100 && !ePressed){
     health = health - 1.5;
     N52.get(nI).setColor(iceroidsHit);
     N52.get(nI).show();
     noFill();
     stroke(255, 0, 0);
     ellipse(N52.get(nI).getX(), N52.get(nI).getY(), 100, 100);
     N52.get(nI).damage(10);
   }
   if(ds < 150 && ePressed){
     N52.get(nI).setColor(iceroidsHit);
     N52.get(nI).show();
     N52.get(nI).damage(40 + esDamage);
   }
   if(health <= 0){
     N49.setX(10000);
     N49.setY(10000);
     fill(255);
     textSize(35);
     text("Game Over, Press 'H' To Restart!", 170, 440);
   }
   if(N52.get(nI).getHealth() <= 0){
     N52.remove(nI);
     iceroid.loop(0);
     iceroidsCount++;
     money += 30 + ((int)(Math.random()*11) - 5);
   }
   
   if(N52.size() > 0){   
   iceX = N52.get(0).getX();
   iceY = N52.get(0).getY();
 }
 
}


  


//RotShield Collision
for(int nI = 0; nI < N52.size(); nI++)
  for(int a = 0; a < N42.size(); a++){
   float d9 = dist(N42.get(a).getX(), N42.get(a).getY(), N52.get(nI).getX(), N52.get(nI).getY());
   if(d9 < 100){
    N52.get(nI).damage(1000);
    N42.remove(a);
    break;
   }
   if(N52.get(nI).getHealth() <= 0){
     N52.remove(nI);
     asteroidsDead.loop(0);
     iceroidsCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 2;
     }
     if(laserCharge < 150){
       laserCharge += 4;
     }
     if(eShieldCount < 150){
       eShieldCount += 4;
     }

     asteroidsKill = asteroidsKill + 100;
     money += 30 + ((int)(Math.random()*11) - 5);
     break;
   }
  }

//Main Cannon Collision
for(int nI = 0; nI < N52.size(); nI++)
  for(int a = 0; a < N46.size(); a++){
   float d2 = dist(N46.get(a).getX(), N46.get(a).getY(), N52.get(nI).getX(), N52.get(nI).getY());
   if(d2 < 70){
    N52.get(nI).setColor(iceroidsHit);
    N52.get(nI).show();
    noFill();
    stroke(255, 0, 0);
    ellipse(N52.get(nI).getX(), N52.get(nI).getY(), 100, 100);
    N52.get(nI).damage(60 + mcDamage);
    N46.remove(a);
    break;
   }
   if(N52.get(nI).getHealth() <= 0){
     N52.remove(nI);
     iceroid.loop(0);
     iceroidsCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 2;
     }
     if(laserCharge < 150){
       laserCharge += 4;
     }
     if(eShieldCount < 150){
       eShieldCount += 4;
     }
     asteroidsKill = asteroidsKill + 100;
     money += 30 + ((int)(Math.random()*11) - 5);
     if(N42.size() < 1){
       shieldGen++;
     }

     break;
   }
  }

//SideBullet Collision
for(int nI = 0; nI < N52.size(); nI++)
   for(int o = 0; o < N45.size(); o++){
   float d = dist(N45.get(o).getX(), N45.get(o).getY(), N52.get(nI).getX(), N52.get(nI).getY());
   if(d < 70){
     N52.get(nI).damage(10 + scDamage);
     N52.get(nI).setColor(iceroidsHit);
     N52.get(nI).show();
     noFill();
    stroke(255, 0, 0);
    ellipse(N52.get(nI).getX(), N52.get(nI).getY(), 100, 100);
     N45.remove(o);
     break;
   }
   if(N52.get(nI).getHealth() <= 0){
     N52.remove(nI);
     iceroid.loop(0);
     iceroidsCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 2;
     }
     if(laserCharge < 150){
       laserCharge += 4;
     }
     if(eShieldCount < 150){
       eShieldCount += 4;
     }
     asteroidsKill = asteroidsKill + 100;
     money += 30 + ((int)(Math.random()*11) - 5);
     if(N42.size() < 1){
       shieldGen++;
     }

     break;
   }
  }

//SideBullet 2 Collision
 for(int nI = 0; nI < N52.size(); nI++)
  for(int a = 0; a < N44.size(); a++){
   float d1 = dist(N44.get(a).getX(), N44.get(a).getY(), N52.get(nI).getX(), N52.get(nI).getY());
   if(d1 < 70){
     N52.get(nI).damage(10 + scDamage);
     N52.get(nI).setColor(iceroidsHit);
     N52.get(nI).show();
     noFill();
    stroke(255, 0, 0);
    ellipse(N52.get(nI).getX(), N52.get(nI).getY(), 100, 100);
     N44.remove(a);
     break;
   }
   if(N52.get(nI).getHealth() <= 0){
     N52.remove(nI);
     iceroid.loop(0);
     iceroidsCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 2;
     }
     if(laserCharge < 150){
       laserCharge += 4;
     }
     if(eShieldCount < 150){
       eShieldCount += 4;
     }
     asteroidsKill = asteroidsKill + 100;
     money += 30 + ((int)(Math.random()*11) - 5);
     if(N42.size() < 1){
       shieldGen++;
     }

     break;
   }
  }
  
  //RandomCannon Collision
  for(int nI = 0; nI < N52.size(); nI++)
  for(int a = 0; a < N39.size(); a++){
   float d1 = dist(N39.get(a).getX(), N39.get(a).getY(), N52.get(nI).getX(), N52.get(nI).getY());
   if(d1 < 70){
     N52.get(nI).damage(20 + rcDamage);
     N52.get(nI).setColor(iceroidsHit);
     N52.get(nI).show();
     noFill();
    stroke(255, 0, 0);
    ellipse(N52.get(nI).getX(), N52.get(nI).getY(), 100, 100);
     N39.remove(a);
     break;
   }
   if(N52.get(nI).getHealth() <= 0){
     N52.remove(nI);
     iceroid.loop(0);
     iceroidsCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 2;
     }
     if(laserCharge < 150){
       laserCharge += 4;
     }
     if(eShieldCount < 150){
       eShieldCount += 4;
     }
     asteroidsKill = asteroidsKill + 100;
     money += 30 + ((int)(Math.random()*11) - 5);
     if(N42.size() < 1){
       shieldGen++;
     }
     break;
   }
  }
  
  //WingCannon Collision
  for(int nI = 0; nI < N52.size(); nI++)
  for(int a = 0; a < N41.size(); a++){
   float d1 = dist(N41.get(a).getX(), N41.get(a).getY(), N52.get(nI).getX(), N52.get(nI).getY());
   if(d1 < 70){
     N52.get(nI).damage(75 + wcDamage);
     N52.get(nI).setColor(iceroidsHit);
     N52.get(nI).show();
     noFill();
    stroke(255, 0, 0);
    ellipse(N52.get(nI).getX(), N52.get(nI).getY(), 100, 100);
     N41.remove(a);
     break;
   }
   if(N52.get(nI).getHealth() <= 0){
     N52.remove(nI);
     iceroid.loop(0);
     iceroidsCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 2;
     }
     if(laserCharge < 150){
       laserCharge += 4;
     }
     if(eShieldCount < 150){
       eShieldCount += 4;
     }
     asteroidsKill = asteroidsKill + 100;
     money += 30 + ((int)(Math.random()*11) - 5);
     if(N42.size() < 1){
       shieldGen++;
     }
     break;
   }
  }
  
  //WingCannon2 Collision
  for(int nI = 0; nI < N52.size(); nI++)
  for(int a = 0; a < N40.size(); a++){
   float d1 = dist(N40.get(a).getX(), N40.get(a).getY(), N52.get(nI).getX(), N52.get(nI).getY());
   if(d1 < 70){
     N52.get(nI).damage(75 + wcDamage);
     N52.get(nI).setColor(iceroidsHit);
     N52.get(nI).show();
     noFill();
    stroke(255, 0, 0);
    ellipse(N52.get(nI).getX(), N52.get(nI).getY(), 100, 100);
     N40.remove(a);
     break;
   }
   if(N52.get(nI).getHealth() <= 0){
     N52.remove(nI);
     iceroid.loop(0);
     iceroidsCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 2;
     }
     if(laserCharge < 150){
       laserCharge += 4;
     }
     if(eShieldCount < 150){
       eShieldCount += 4;
     }
     asteroidsKill = asteroidsKill + 100;
     money += 30 + ((int)(Math.random()*11) - 5);
     if(N42.size() < 1){
       shieldGen++;
     }
     break;
   }
  }
  
//MegaBomb Collision
  for(int nI = 0; nI < N52.size(); nI++)
  for(int a = 0; a < N43.size(); a++){
   float d3 = dist(N43.get(a).getX(), N43.get(a).getY(), N52.get(nI).getX(), N52.get(nI).getY());
   if(d3 < 70){
     N52.get(nI).setColor(iceroidsHit);
     N52.get(nI).damage(200 + mbLevel);
     N52.get(nI).show();
     noFill();
    stroke(255, 0, 0);
    ellipse(N52.get(nI).getX(), N52.get(nI).getY(), 100, 100);
     N43.remove(a);
     break;
   }
   if(N52.get(nI).getHealth() <= 0){
     N52.remove(nI);
     iceroid.loop(0);
     iceroidsCount++;
     asteroidsKill = asteroidsKill + 100;
     money += 30 + ((int)(Math.random()*11) - 5);
     break;
   }
  }
  
//Laser Collision
  for(int nI = 0; nI < N52.size(); nI++)
  for(int a = 0; a < N38.size(); a++){
   float d3 = dist(N38.get(a).getX(), N38.get(a).getY(), N52.get(nI).getX(), N52.get(nI).getY());
   if(d3 < 70){
     N52.get(nI).setColor(iceroidsHit);
     N52.get(nI).damage(110 + lsDamage);
     N52.get(nI).show();
     noFill();
    stroke(255, 0, 0);
    ellipse(N52.get(nI).getX(), N52.get(nI).getY(), 100, 100);
     N38.remove(a);
     break;
   }
   if(N52.get(nI).getHealth() <= 0){
     N52.remove(nI);
     iceroid.loop(0);
     iceroidsCount++;
     asteroidsKill = asteroidsKill + 100;
     money += 30 + ((int)(Math.random()*11) - 5);
     break;
   }
  }
  
  if(iceroid.isPlaying()){
    noFill();
    stroke(201, 250, 255);
    strokeWeight(4);
    Ir *= 1.08;
    ellipse(iceX, iceY, Ir, Ir);
    stroke(255);
    strokeWeight(1);
 }
  
  
  
  //IceShards
  if(N52.size() > 0){
    if(frameCount % 33 == 0 && !dPressed && !rPressed && !gPressed && !Scan){
    N53.add(new IceShard(N52.get(0)));
    }
    for(int s = 0; s < N53.size(); s++){
     float di =  dist(N53.get(s).getX(), N53.get(s).getY(), N49.getX(), N49.getY());
     if(di < 70){
       iceShard.loop(0);
       health -= 10;
       N53.remove(s);
       noFill();
       strokeWeight(2);
       stroke(255, 0, 0);
       ellipse(N49.getX(), N49.getY(), 140, 140);
     }
    }
  }

  
  //Regular Coins Collision
  for(int n = 0; n < N55.size(); n++){
    float dr = dist(N55.get(n).getX(), N55.get(n).getY(), N49.getX(), N49.getY());
     if(dr < 65){
       money += 10 + ((int)(Math.random()*11) - 5);
       N55.remove(n);
       Coins.loop(0);
       noFill();
       strokeWeight(3);
       stroke(255, 252, 144);
       ellipse(N49.getX(), N49.getY() - 30, 120, 120);
       strokeWeight(1);
     }
  }
  
  //Bossteroid Coins Collision
  for(int n = 0; n < N56.size(); n++){
    float dr = dist(N56.get(n).getX(), N56.get(n).getY(), N49.getX(), N49.getY());
     if(dr < 72){
       money += 90 + ((int)(Math.random()*21) - 10);
       N56.remove(n);
       Coins.loop(0);
       noFill();
       strokeWeight(3);
       stroke(255, 252, 144);
       ellipse(N49.getX(), N49.getY() - 30, 120, 120);
       strokeWeight(1);
     }
  }
  
  //MegaBossteroid Coins Collision
  for(int n = 0; n < N57.size(); n++){
    float dr = dist(N57.get(n).getX(), N57.get(n).getY(), N49.getX(), N49.getY());
     if(dr < 77){
       money += 350 + ((int)(Math.random()*31) - 15);
       N57.remove(n);
       Coins.loop(0);
       noFill();
       strokeWeight(3);
       stroke(255, 252, 144);
       ellipse(N49.getX(), N49.getY() - 30, 120, 120);
       strokeWeight(1);
     }
  }
  
  
  //Iceroid Coins Collision
  for(int n = 0; n < N58.size(); n++){
    float dr = dist(N58.get(n).getX(), N58.get(n).getY(), N49.getX(), N49.getY());
     if(dr < 75){
       money += 30 + ((int)(Math.random()*11) - 5);
       N58.remove(n);
       Coins.loop(0);
       noFill();
       strokeWeight(3);
       stroke(255, 252, 144);
       ellipse(N49.getX(), N49.getY() - 30, 120, 120);
       strokeWeight(1);
     }
  }

  
 
 
 
 
 
  
  //Regular Asteroids Collision
   strokeWeight(2);
//ship Collision
 for(int nI = 0; nI < N48.size(); nI++){
   N48.get(nI).setColor(asteroids);
   N48.get(nI).show();
   if(N48.size() > 0 && health >= 0 && !dPressed && !rPressed && !gPressed && !Scan){
     N48.get(nI).move();
   }
   N48.get(nI).spin();
   float ds = dist(N49.getX(), N49.getY(), N48.get(nI).getX(), N48.get(nI).getY());
   if(ds < 100 && !ePressed){
     health = health - 1;
     N48.get(nI).setColor(asteroidsHit);
     N48.get(nI).show();
     noFill();
     stroke(255, 0, 0);
     ellipse(N48.get(nI).getX(), N48.get(nI).getY(), 100, 100);
     N48.get(nI).damage(10);
   }
   if(ds < 150 && ePressed){
     N48.get(nI).setColor(asteroidsHit);
     N48.get(nI).show();
     N48.get(nI).damage(40 + esDamage);
   }
   if(health <= 0){
     N49.setX(10000);
     N49.setY(10000);
     fill(255);
     textSize(35);
     text("Game Over, Press 'H' To Restart!", 170, 330);
     textSize(18);
     text("Asteroids Destroyed: " + asteroidsCount, 170, 480);
     text("Iceroids Destroyed: " + iceroidsCount, 170, 510);
     text("Bossteroids Destroyed: " + BossCount, 170, 540);
     text("Mega Bossteroids Destroyed " + MegaBossCount, 170, 570);
   }
   if(N48.get(nI).getHealth() <= 0){
     N48.remove(nI);
     asteroidsDead.loop(0);
     asteroidsCount++;
     asteroidsKill += 50;
   }
}

//RotShield Collision
for(int nI = 0; nI < N48.size(); nI++)
  for(int a = 0; a < N42.size(); a++){
   float d9 = dist(N42.get(a).getX(), N42.get(a).getY(), N48.get(nI).getX(), N48.get(nI).getY());
   if(d9 < 100){
    N48.get(nI).damage(1000);
    N42.remove(a);
    break;
   }
   if(N48.get(nI).getHealth() <= 0){
     N48.remove(nI);
     asteroidsDead.loop(0);
     asteroidsCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 1;
     }
     if(laserCharge < 150){
       laserCharge += 2;
     }
     if(eShieldCount < 150){
       eShieldCount += 2;
     }

     asteroidsKill = asteroidsKill + 50;
     
     break;
   }
  }

//Main Cannon Collision
for(int nI = 0; nI < N48.size(); nI++)
  for(int a = 0; a < N46.size(); a++){
   float d2 = dist(N46.get(a).getX(), N46.get(a).getY(), N48.get(nI).getX(), N48.get(nI).getY());
   if(d2 < 70){
    N48.get(nI).setColor(asteroidsHit);
    N48.get(nI).show();
    noFill();
    stroke(255, 0, 0);
    ellipse(N48.get(nI).getX(), N48.get(nI).getY(), 100, 100);
    N48.get(nI).damage(60 + mcDamage);
    N46.remove(a);
    break;
   }
   if(N48.get(nI).getHealth() <= 0){
     N48.remove(nI);
     asteroidsDead.loop(0);
     asteroidsKill += 50;
     asteroidsCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 1;
     }
     if(laserCharge < 150){
       laserCharge += 2;
     }
     if(eShieldCount < 150){
       eShieldCount += 2;
     }
     
     if(N42.size() < 1){
       shieldGen++;
     }

     break;
   }
  }

//SideBullet Collision
for(int nI = 0; nI < N48.size(); nI++)
   for(int o = 0; o < N45.size(); o++){
   float d = dist(N45.get(o).getX(), N45.get(o).getY(), N48.get(nI).getX(), N48.get(nI).getY());
   if(d < 70){
     N48.get(nI).damage(10 + scDamage);
     N48.get(nI).setColor(asteroidsHit);
     N48.get(nI).show();
     noFill();
    stroke(255, 0, 0);
    ellipse(N48.get(nI).getX(), N48.get(nI).getY(), 100, 100);
     N45.remove(o);
     break;
   }
   if(N48.get(nI).getHealth() <= 0){
     N48.remove(nI);
     asteroidsDead.loop(0);
     asteroidsKill += 50;
     asteroidsCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 1;
     }
     if(laserCharge < 150){
       laserCharge += 2;
     }
     if(eShieldCount < 150){
       eShieldCount += 2;
     }
     
     if(N42.size() < 1){
       shieldGen++;
     }

     break;
   }
  }

//SideBullet 2 Collision
 for(int nI = 0; nI < N48.size(); nI++)
  for(int a = 0; a < N44.size(); a++){
   float d1 = dist(N44.get(a).getX(), N44.get(a).getY(), N48.get(nI).getX(), N48.get(nI).getY());
   if(d1 < 70){
     N48.get(nI).damage(10 + scDamage);
     N48.get(nI).setColor(asteroidsHit);
     N48.get(nI).show();
     noFill();
    stroke(255, 0, 0);
    ellipse(N48.get(nI).getX(), N48.get(nI).getY(), 100, 100);
     N44.remove(a);
     break;
   }
   if(N48.get(nI).getHealth() <= 0){
     N48.remove(nI);
     asteroidsDead.loop(0);
     asteroidsKill += 50;
     asteroidsCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 1;
     }
     if(laserCharge < 150){
       laserCharge += 2;
     }
     if(eShieldCount < 150){
       eShieldCount += 2;
     }
     
     if(N42.size() < 1){
       shieldGen++;
     }

     break;
   }
  }
  
  //RandomCannon Collision
  for(int nI = 0; nI < N48.size(); nI++)
  for(int a = 0; a < N39.size(); a++){
   float d1 = dist(N39.get(a).getX(), N39.get(a).getY(), N48.get(nI).getX(), N48.get(nI).getY());
   if(d1 < 70){
     N48.get(nI).damage(20 + rcDamage);
     N48.get(nI).setColor(asteroidsHit);
     N48.get(nI).show();
     noFill();
    stroke(255, 0, 0);
    ellipse(N48.get(nI).getX(), N48.get(nI).getY(), 100, 100);
     N39.remove(a);
     break;
   }
   if(N48.get(nI).getHealth() <= 0){
     N48.remove(nI);
     asteroidsDead.loop(0);
     asteroidsKill += 50;
     asteroidsCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 1;
     }
     if(laserCharge < 150){
       laserCharge += 2;
     }
     if(eShieldCount < 150){
       eShieldCount += 2;
     }
     
     if(N42.size() < 1){
       shieldGen++;
     }
     break;
   }
  }
  
  //WingCannon Collision
  for(int nI = 0; nI < N48.size(); nI++)
  for(int a = 0; a < N41.size(); a++){
   float d1 = dist(N41.get(a).getX(), N41.get(a).getY(), N48.get(nI).getX(), N48.get(nI).getY());
   if(d1 < 70){
     N48.get(nI).damage(75 + wcDamage);
     N48.get(nI).setColor(asteroidsHit);
     N48.get(nI).show();
     noFill();
    stroke(255, 0, 0);
    ellipse(N48.get(nI).getX(), N48.get(nI).getY(), 100, 100);
     N41.remove(a);
     break;
   }
   if(N48.get(nI).getHealth() <= 0){
     N48.remove(nI);
     asteroidsDead.loop(0);
     asteroidsKill += 50;
     asteroidsCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 1;
     }
     if(laserCharge < 150){
       laserCharge += 2;
     }
     if(eShieldCount < 150){
       eShieldCount += 2;
     }     
     if(N42.size() < 1){
       shieldGen++;
     }
     break;
   }
  }
  
  //WingCannon2 Collision
  for(int nI = 0; nI < N48.size(); nI++)
  for(int a = 0; a < N40.size(); a++){
   float d1 = dist(N40.get(a).getX(), N40.get(a).getY(), N48.get(nI).getX(), N48.get(nI).getY());
   if(d1 < 70){
     N48.get(nI).damage(75 + wcDamage);
     N48.get(nI).setColor(asteroidsHit);
     N48.get(nI).show();
     noFill();
    stroke(255, 0, 0);
    ellipse(N48.get(nI).getX(), N48.get(nI).getY(), 100, 100);
     N40.remove(a);
     break;
   }
   if(N48.get(nI).getHealth() <= 0){
     N48.remove(nI);
     asteroidsDead.loop(0);
     asteroidsKill += 50;
     asteroidsCount++;
     if(shieldCount < 100){
     shieldCount = shieldCount + 1;
     }
     if(laserCharge < 150){
       laserCharge += 2;
     }
     if(eShieldCount < 150){
       eShieldCount += 2;
     }
     
     if(N42.size() < 1){
       shieldGen++;
     }
     break;
   }
  }
  
//MegaBomb Collision
  for(int nI = 0; nI < N48.size(); nI++)
  for(int a = 0; a < N43.size(); a++){
   float d3 = dist(N43.get(a).getX(), N43.get(a).getY(), N48.get(nI).getX(), N48.get(nI).getY());
   if(d3 < 70){
     N48.get(nI).setColor(asteroidsHit);
     N48.get(nI).damage(200 + mbLevel);
     N48.get(nI).show();
     noFill();
    stroke(255, 0, 0);
    ellipse(N48.get(nI).getX(), N48.get(nI).getY(), 100, 100);
     N43.remove(a);
     break;
   }
   if(N48.get(nI).getHealth() <= 0){
     N48.remove(nI);
     asteroidsDead.loop(0);
     asteroidsKill += 50;
     asteroidsCount++;
     
     break;
   }
  }
  
//Laser Collision
  for(int nI = 0; nI < N48.size(); nI++)
  for(int a = 0; a < N38.size(); a++){
   float d3 = dist(N38.get(a).getX(), N38.get(a).getY(), N48.get(nI).getX(), N48.get(nI).getY());
   if(d3 < 70){
     N48.get(nI).setColor(asteroidsHit - 20);
     N48.get(nI).damage(110 + lsDamage);
     N48.get(nI).show();
     noFill();
    stroke(255, 0, 0);
    ellipse(N48.get(nI).getX(), N48.get(nI).getY(), 100, 100);
     N38.remove(a);
     break;
   }
   if(N48.get(nI).getHealth() <= 0){
     N48.remove(nI);
     asteroidsDead.loop(0);
     asteroidsKill += 50;
     asteroidsCount++;
     
     break;
   }
  }
  
  if(health <= 0){
    difficulty = 0;
    buff = 0;
    bBuff = 0;
    mbBuff = 0;
    iBuff = 0;
    iceDmgBuff = 0;
    if(hPressed){
    N48 = new ArrayList<Asteroid>();
    for(int i = 0; i < 5 + difficulty; i++){
    N48.add(new Asteroid());
    N48.get(i).setX(width + 60);
    N48.get(i).setY(height + 60);
    N48.get(i).setDirectionX((Math.random()*2.4) - 1.2);
    N48.get(i).setDirectionY((Math.random()*2.4) - 1.2);
    N48.get(i).setHealth(700 + buff);
    N55.add(new RegCoins());
    N55.get(i).setX(N48.get(i).getX());
    N55.get(i).setY(N48.get(i).getY());
    N55.get(i).setDirectionX(N48.get(i).getDirectionX());
    N55.get(i).setDirectionY(N48.get(i).getDirectionY());
      }
    }
   N50 = new ArrayList<Bossteroid>();
   N51 = new ArrayList<MegaBossteroid>();
   N52 = new ArrayList<Iceroid>();
   N54 = new ArrayList<HealthPack>();
   N56 = new ArrayList<BossCoins>();
   N57 = new ArrayList<MegaBossCoins>();
   N58 = new ArrayList<IceCoins>();
  }
  
 }
 
 
 //HealthPack Collision
  for(int a = 0; a < N54.size(); a++){
   float d6 = dist(N54.get(a).getX(), N54.get(a).getY(), N49.getX(), N49.getY());
   if(d6 < 70){
    health += 10;
    noFill();
    strokeWeight(2);
    stroke(0, 255, 0);
    ellipse(N49.getX(), N49.getY() - 16, 100, 100);
    N54.remove(a);
    HealthPack.loop(0);
    break;
   }
    strokeWeight(1);
  }
 

     //Ship Show
 
 spd = 0.035;
 
 
 if(health > 0 && frameCount > 570){
   noStroke();
   N49.Exhaust();
   N49.show();
   if(!dPressed && !rPressed && !gPressed && !Scan){
    N49.setX((int)x);
    N49.setY((int)y);
   }


  if(!wPressed && !dPressed && !rPressed && !gPressed && !Scan && health > 0 && frameCount > 571){
     shoot();
  }

 }
  
  
  if(ShipExplode.isPlaying()){
    noFill();
    stroke(250, 255, 0);
    strokeWeight(4);
    I *= 1.12;
    I2 *= 1.1;
    I3 *= 1.08;
    I4 *= 1.06;
    I5 *= 1.05;
    ellipse(N49.getX(), N49.getY(), I, I);
    ellipse(N49.getX(), N49.getY(), I2, I2);
    ellipse(N49.getX(), N49.getY(), I3, I3);
    ellipse(N49.getX(), N49.getY(), I4, I4);
    ellipse(N49.getX(), N49.getY(), I5, I5);
    stroke(255);
    strokeWeight(1);
  }
  
  
  //Reset
  if(hPressed && health <= 0){
    ShipExplode.loop(0);
    I = 1;
    I2 = 1;
    I3 = 1;
    I4 = 1;
    I5 = 1;
    health = 100.0;
    bossCount = 0;
    megaBossCount = 0;
    BossCount = 0;
    MegaBossCount = 0;
    iceroidsCount = 0;
    asteroidsCount = 0;
    shieldCount = 0;
    laserCharge = 0;
    eShieldCount = 0;
    highScore = 0;
    asteroidsKill = 0;
    shieldGen = 0;
    stage = 1;
    money = 0;
    BulletCount = 0;
    mcUpCost = 20;
    mcDamage = 0;
    mcLevel = 1;
    mcLvBar = 5.09375;
    mcWidth = 0;
    mcHeight = 0;
    wcUpCost = 30;
    wcDamage = 0;
    wcLevel = 1;
    wcLvBar = 5.09375;
    wcWidth = 0;
    wcHeight = 0;
    scUpCost = 15;
    scDamage = 0;
    scLevel = 1;
    scLvBar = 5.09375;
    rcUpCost = 15;
    rcDamage = 0;
    rcLevel = 1;
    rcLvBar = 5.09375;
    rcWidth = 0;
    rcHeight = 0;
    mbUpCost = 30;
    mbDamage = 0;
    mbLevel = 1;
    mbLvBar = 5.09375;
    lsUpCost = 25;
    lsDamage = 0;
    lsLevel = 1;
    lsLvBar = 5.09375;
    esUpCost = 15;
    esDamage = 0;
    esLevel = 1;
    esLvBar = 5.09375;
    frUpCost = 200;
    mcFireUp = 0;
    wcFireUp = 0;
    rcFireUp = 0;
    frLevel = 1;
    frLvBar = 32.6;
    maxHealth = 100.0;
    mhLevel = 1;
    mhUpCost = 130;
    mhLvBar = 32.6;
    

  }
   
   stroke(255);
   strokeWeight(1);
   //Bossteroid Health Bar
  if(frameCount > 571 && N50.size() > 0){
  fill(255, 124, 124);
  stroke(255);
  rect((float)(N50.get(0).getX()), (float)(N50.get(0).getY()), (float)((N50.get(0).getHealth())/(180 + (bBuff/100))), (float)(40)); 
  textSize(13);
  fill(255);
  text("#" + bossCount + ": " + N50.get(0).getHealth(), N50.get(0).getX() - 1, N50.get(0).getY() - 3);
  }
  
   //MegaBossteroid Health Bar
  if(frameCount > 571 && N51.size() > 0){
  fill(157, 194, 255);
  stroke(255);
  rect((float)(N51.get(0).getX()), (float)(N51.get(0).getY()), (float)((N51.get(0).getHealth())/(700 + (mbBuff/300))), (float)(40)); 
  textSize(13);
  fill(255);
  text("#" + megaBossCount + ": " + N51.get(0).getHealth(), N51.get(0).getX() - 1, N51.get(0).getY() - 3);
  }
  
  //Laser Bar
  fill(255);
  textSize(18);
  text("Laser: " + (int)laserCharge + " %", 273, (int)(0.9255*height));
  fill(207, 255, 0);
  noStroke();
  rect((int)(0.2778*width), (int)(0.9333*height), laserCharge, 40);
  stroke(255);
  noFill();
  rect((int)(0.2778*width) - 1, (int)(0.9333*height) - 1, 151, 41); 
  
  //EnergyShield Bar
  fill(255);
  textSize(18);
  text("Shield: " + (int)eShieldCount + " %", (int)(0.57*width), (int)(0.9255*height));
  fill(211, 255, 227);
  noStroke();
  rect((int)(0.55*width), (int)(0.9333*height), eShieldCount, 40);
  stroke(255);
  noFill();
  rect((int)(0.55*width) - 1, (int)(0.9333*height) - 1, 151, 41);

  //MegaBomb Bar
  fill(255);
  textSize(18);
  text("Mega Bomb: " + (int)shieldCount + " %", (int)(0.03889*width), (int)(0.9255*height));
  fill(45, 126, 255);
  noStroke();
  rect((int)(0.07333*width), (int)(0.9333*height), shieldCount, 40);
  stroke(255);
  noFill();
  rect((int)(0.07333*width) - 1, (int)(0.9333*height) - 1, 101, 41);

  //Ship Health Bar
  fill(255);
  textSize(18);
  text("Health: " + (int)((health/maxHealth)*100) + " %", (int)(0.79333*width), (int)(0.9255*height));
  if(health/maxHealth > 0.45){
    fill(66, 244, 69);
  }
  if(health/maxHealth > 0.2 && health/maxHealth <= 0.45){
    fill(255, 161, 0);
  }
  if(health/maxHealth > 0 && health/maxHealth <= 0.2){
    fill(232, 4, 4);
  }
  noStroke();
  rect((int)(0.8111*width), (int)(0.9333*height), (health/maxHealth)*100, 40);
  stroke(255);
  noFill();
  rect((int)(0.8111*width) - 1, (int)(0.9333*height) - 1, 101, 41);
  
  //High Score
  if(health > 0 && frameCount > 571){
     highScore = asteroidsKill;
  }
  
  fill(255, 255, 255);
  textSize(20);
  text("High Score: " + highScore, 335, 35);
 
 
 //Stage Count
 textSize(20);
 text("Stage " + stage, 30, 35);

 //Money Count
 textSize(20);
 text("Space Bucks: $" + (int)money, 665, 35);
 
 fill(255, 252, 144, 200);
 ellipse(645, 28, 20, 20);
 fill(0, 0, 0);
 text('$', 639, 36);
 
 //Ship Yard
 //R
 if(frameCount > 565 && !gPressed && key > 'q' && key < 's' || frameCount > 565 && !gPressed && key > 'Q' && key < 'S'){
   rPressed = true; 
   Scan = true;
 }
 //T
 if(rPressed && frameCount > 565 && key > 's' && key < 'u'|| rPressed & frameCount > 565 && key > 'S' && key < 'U'){
   rPressed = false; 
   gPressed = true; 
   ShipYard.loop(0);
 }
 //G
 if(frameCount > 565 && !rPressed && key > 'f' && key < 'h' && isOverShip || frameCount > 565 && !rPressed && key > 'F' && key < 'H' && isOverShip){
   gPressed = false;
   Scan = false;
 }
 //Ship Yard Interior
  if(rPressed && health > 0){
    fill(46, 41, 98); 
    rect(-2, -2, width + 3, height + 3);
    textSize(20);
    fill(255);
    text("Press 'T' To Exit", 25, 880);
    text("Press 'T' To Exit", 25, 33);
    
     //Main Cannon Show
 for(int a = 0; a < N106.size(); a++){
    N106.get(a).show();
    N106.get(a).move();
    N106.get(a).setWidthAdd(mcWidth);
    N106.get(a).setHeightAdd(mcHeight);
    N106.get(a).accelerate(0.9);
     if(N106.get(a).getX() > width + 100 || N106.get(a).getY() > height + 100 || N106.get(a).getX() < 445 || N106.get(a).getY() < 100){
       N106.remove(a);
     }
  }
  
  //sideBullet Show
  for(int b = 0; b < N105.size(); b++){
    N105.get(b).show();
    N105.get(b).move();
     if(N105.get(b).getX() > width + 100 || N105.get(b).getY() > height + 100 || N105.get(b).getX() < 445 || N105.get(b).getY() < 85){
       N105.remove(b);
     }
  }

  //sideBullet2 Show
  for(int b = 0; b < N104.size(); b++){
    N104.get(b).show();
    N104.get(b).move();
     if(N104.get(b).getX() > width + 100 || N104.get(b).getY() > height + 100 || N104.get(b).getX() < 455 || N104.get(b).getY() < 85){
       N104.remove(b);
     }
  }
  
  //RandomCannon show
  for(int b = 0; b < N99.size(); b++){
    N99.get(b).show();
    N99.get(b).move();
    N99.get(b).setWidthAdd(rcWidth);
    N99.get(b).setHeightAdd(rcHeight);
     if(N99.get(b).getX() > width + 100 || N99.get(b).getY() > 760 || N99.get(b).getX() < 510 || N99.get(b).getY() < 80){
       N99.remove(b);
     }
  }
  
  //WingCannon Show
  for(int b = 0; b < N101.size(); b++){
    N101.get(b).show();
    N101.get(b).move();
    N101.get(b).setWidthAdd(wcWidth);
    N101.get(b).setHeightAdd(wcHeight);
    N101.get(b).accelerate(0.29);
     if(N101.get(b).getX() > width + 100 || N101.get(b).getY() > height + 100 || N101.get(b).getX() < 453 || N101.get(b).getY() < 80){
       N101.remove(b);
     }
  }
  
  //WingCannon2 Show
  for(int b = 0; b < N100.size(); b++){
    N100.get(b).show();
    N100.get(b).move();
    N100.get(b).setWidthAdd(wcWidth);
    N100.get(b).setHeightAdd(wcHeight);
    N100.get(b).accelerate(0.29);
     if(N100.get(b).getX() > width + 100 || N100.get(b).getY() > height + 100 || N100.get(b).getX() < 453 || N100.get(b).getY() < 80){
       N100.remove(b);
     }
  }
  
  //MegaBomb show
  for(int b = 0; b < N103.size(); b++){
    N103.get(b).show();
    N103.get(b).move();
     if(N103.get(b).getX() > width + 100 || N103.get(b).getY() > 760 || N103.get(b).getX() < 510 || N103.get(b).getY() < 80){
       N103.remove(b);
     }
  }
  
  if(!(mouseX >= 52 && mouseX <= 217 && mouseY >= 149 + 154 && mouseY <= 192 + 154) && !(mouseX >= 52 && mouseX <= 217 && mouseY >= 149 + 154 + 77 && mouseY <= 192 + 154 + 77) && !(mouseX >= 52 && mouseX <= 217 && mouseY >= 149 + 154 + 154 + 154 + 77 && mouseY <= 192 + 154 + 154 + 154 + 77)){
    N108.setX(707);
    N108.setY(700);
    noStroke();
    N108.Exhaust();
    N108.show();
  }
    

 
   textSize(25);
   fill(255);
   text("Ship Yard", 370, 35);
   textSize(30);
   fill(255);
   text("You Have:", 628, 835);
   text("$" + (int)money, 628, 880);
   textSize(20);
   fill(255);
   text("You Have:", 635, 25);
   text("$" + (int)money, 635, 45);
   stroke(255);
   
   line(-1, 52, width + 1, 52);
   stroke(255);
   line(485, 52, 485, height + 1);
   stroke(255);
   line(485, 790, width + 1, 790);
   stroke(255);
   
   //Main Cannon Upgrade Sign
   
   fill(0, 0, 0);
   if(mouseX >= 52 && mouseX <= 217 && mouseY >= 72 && mouseY <= 115){
     if(frameCount % 10 == 0){
      N106.add(new Bullet(N108));
     }
     if(frameCount % 14 == 0){
      shooting.loop(0); 
     }
     fill(198, 197, 203);
   }
   rect(53, 73, 164, 42);  
   
   textSize(20);
   fill(255);
   text("Main Cannon", 70, 100);   
   
   noFill();
   rect(52, 72, 165, 43);
   
   // Main Cannon Levels Display
   fill(0, 0, 0);
   rect(10, 73, 43, 61);
   noFill();
   rect(9, 72, 43, 63);
   textSize(20);
   fill(255);
   text("Lv.", 20, 100);
   text(mcLevel, 18, 126);
   
   // Main Cannon '+' Sign
   fill(0, 0, 0);
   if(mouseX >= 217 && mouseX <= 258 && mouseY >= 72 && mouseY <= 135){
      fill(198, 197, 203);
      if(frameCount % 10 == 0 && mousePressed && (mouseButton == LEFT)){
          if((int)money - (int)mcUpCost >= 0){
            if(mcLevel < 32){
             Upgrade.loop(0);
             money -= mcUpCost;
             mcUpCost *= 1.09;
             mcDamage += 5;
             mcLevel++;
             mcLvBar += 5.09375;
             mcWidth += 0.00006;
             mcHeight += 0.1375;
           }
         }
        }
       if(mousePressed && (mouseButton == LEFT)){
         fill(0, 0, 0);
       }
     }
   rect(218, 73, 40, 62);
   
   textSize(36);
   fill(255);
   text(" + ", 216, 115);
   
   noFill();
   rect(217, 72, 41, 63);
   
   //Main Cannon Level Box
   noStroke();
   fill(0, 0, 0);
   rect(54, 116, 163, 19);
   fill(255, 196, 0);
   if(mcLevel == 32){
     fill(255, 0, 0);
   }
   rect(54.0, 116.0, mcLvBar, 19.0);
   stroke(255);
   noFill();
   rect(53, 115, 164, 20);
   
   //Main Cannon Money Needed
   fill(0, 0, 0);
   rect(258, 73, 170, 62);
   
   noFill();
   rect(257, 72, 171, 63);
   
   textSize(15);
   fill(255);
   text("Space Bucks Needed: ", 269, 100);
   textSize(20);
   if(mcLevel < 32){
   fill(255);
   text("$" + (int)mcUpCost, 308, 122);
   }
   if(mcLevel == 32){
   fill(255);
   text("--", 324, 122);
   }
   
   
   
   
   
   
   
   
   //Wing Cannon Upgrade Sign
   
   fill(0, 0, 0);
   if(mouseX >= 52 && mouseX <= 217 && mouseY >= 149 && mouseY <= 192){
       if(frameCount % 100 == 0){
         shooting.loop(0);
       }
     if(frameCount % 100 == 0){
      N101.add(new WingCannon(N108));
      N100.add(new WingCannon2(N108));
     }
     fill(198, 197, 203);
   }
   rect(53, 150, 164, 42);  
   
   textSize(20);
   fill(255);
   text("Wing Cannon", 70, 177);   
   
   noFill();
   rect(52, 149, 165, 43);
   
   //Wing Cannon Levels Display
   fill(0, 0, 0);
   rect(10, 150, 43, 61);
   noFill();
   rect(9, 149, 43, 63);
   textSize(20);
   fill(255);
   text("Lv.", 20, 177);
   text(wcLevel, 18, 203);
   
   //Wing Cannon '+' Sign
   fill(0, 0, 0);
   if(mouseX >= 217 && mouseX <= 258 && mouseY >= 149 && mouseY <= 212){
      fill(198, 197, 203);
      if(frameCount % 10 == 0 && mousePressed && (mouseButton == LEFT)){
          if((int)money - (int)wcUpCost >= 0){
            if(wcLevel < 32){
             Upgrade.loop(0);
             money -= wcUpCost;
             wcUpCost *= 1.1;
             wcDamage += 15;
             wcLevel++;
             wcLvBar += 5.09375;
             wcWidth += 0.00003;
             wcHeight += 0.09;
           }
         }
        }
       if(mousePressed && (mouseButton == LEFT)){
         fill(0, 0, 0);
       }
     }
   rect(218, 150, 40, 62);
   
   textSize(36);
   fill(255);
   text(" + ", 216, 192);
   
   noFill();
   rect(217, 149, 41, 63);
   
   //Wing Cannon Level Box
   noStroke();
   fill(0, 0, 0);
   rect(54, 193, 163, 19);
   fill(255, 196, 0);
   if(wcLevel == 32){
     fill(255, 0, 0);
   }
   rect(54.0, 193.0, wcLvBar, 19.0);
   stroke(255);
   noFill();
   rect(53, 192, 164, 20);
   
   //Wing Cannon Money Needed
   fill(0, 0, 0);
   rect(258, 150, 170, 62);
   
   noFill();
   rect(257, 149, 171, 63);
   
   textSize(15);
   fill(255);
   text("Space Bucks Needed: ", 269, 177);
   textSize(20);
   if(wcLevel < 32){
   fill(255);
   text("$" + (int)wcUpCost, 308, 199);
   }
   if(wcLevel == 32){
   fill(255);
   text("--", 324, 199);
   }
   
   
   
   
   
    //Side Cannon Upgrade Sign
   
   fill(0, 0, 0);
   if(mouseX >= 52 && mouseX <= 217 && mouseY >= 149 + 77 && mouseY <= 192+77){
     if(frameCount % 14 == 0){
      shooting.loop(0); 
     }
     if(frameCount % 10 == 0){
      N105.add(new sideBullet(N108));
      N104.add(new sideBullet2(N108));
     }
     fill(198, 197, 203);
   }
   rect(53, 150 + 77, 164, 42);  
   
   textSize(20);
   fill(255);
   text("Side Cannon", 75, 177+77);   
   
   noFill();
   rect(52, 149+77, 165, 43);
   
   //Side Cannon Levels Display
   fill(0, 0, 0);
   rect(10, 150+77, 43, 61);
   noFill();
   rect(9, 149+77, 43, 63);
   textSize(20);
   fill(255);
   text("Lv.", 20, 177 + 77);
   text(scLevel, 18, 203 + 77);
   
   //Side Cannon '+' Sign
   fill(0, 0, 0);
   if(mouseX >= 217 && mouseX <= 258 && mouseY >= 149 + 77 && mouseY <= 212 + 77){
      fill(198, 197, 203);
      if(frameCount % 10 == 0 && mousePressed && (mouseButton == LEFT)){
          if((int)money - (int)scUpCost >= 0){
            if(scLevel < 32){
              Upgrade.loop(0);
             money -= scUpCost;
             scUpCost *= 1.07;
             scDamage += 3;
             scLevel++;
             scLvBar += 5.09375;     
           }
         }
        }
       if(mousePressed && (mouseButton == LEFT)){
         fill(0, 0, 0);
       }
     }
   rect(218, 150 + 77, 40, 62);
   
   textSize(36);
   fill(255);
   text(" + ", 216, 192 + 77);
   
   noFill();
   rect(217, 149 + 77, 41, 63);
   
   //Side Cannon Level Box
   noStroke();
   fill(0, 0, 0);
   rect(54, 193 + 77, 163, 19);
   fill(255, 196, 0);
   if(scLevel == 32){
     fill(255, 0, 0);
   }
   rect(54.0, 193.0 + 77.0, scLvBar, 19.0);
   stroke(255);
   noFill();
   rect(53, 192 + 77, 164, 20);
   
   //Side Cannon Money Needed
   fill(0, 0, 0);
   rect(258, 150 + 77, 170, 62);
   
   noFill();
   rect(257, 149 + 77, 171, 63);
   
   textSize(15);
   fill(255);
   text("Space Bucks Needed: ", 269, 177 + 77);
   textSize(20);
   if(scLevel < 32){
   fill(255);
   text("$" + (int)scUpCost, 308, 199 + 77);
   }
   if(scLevel == 32){
   fill(255);
   text("--", 324, 199 + 77);
   }
   
   
   
   
   
   
   
   
   
   
    //Random Cannon Upgrade Sign
   
   fill(0, 0, 0);
   if(mouseX >= 52 && mouseX <= 217 && mouseY >= 149 + 154 && mouseY <= 192 + 154){
     N108.setY(450);
     noStroke();
     N108.Exhaust();
     N108.show();
     stroke(255);
     
     if(frameCount % 20 == 0){
      shooting.loop(0); 
     }
     
     if(frameCount % 20 == 0){
      N99.add(new RandomCannon(N108));
     }
     fill(198, 197, 203);
   }
   rect(53, 150 + 154, 164, 42);  
   
   textSize(17);
   fill(255);
   text("Random Cannon", 65, 177 + 154);   
   
   noFill();
   rect(52, 149 + 154, 165, 43);
   
   //Random Cannon Levels Display
   fill(0, 0, 0);
   rect(10, 150 + 154, 43, 61);
   noFill();
   rect(9, 149 + 154, 43, 63);
   textSize(20);
   fill(255);
   text("Lv.", 20, 177 + 154);
   text(rcLevel, 18, 203 + 154);
   
   //Random Cannon '+' Sign
   fill(0, 0, 0);
   if(mouseX >= 217 && mouseX <= 258 && mouseY >= 149 + 154 && mouseY <= 212 + 154){
      fill(198, 197, 203);
      if(frameCount % 10 == 0 && mousePressed && (mouseButton == LEFT)){
          if((int)money - (int)rcUpCost >= 0){
            if(rcLevel < 32){
             Upgrade.loop(0);
             money -= rcUpCost;
             rcUpCost *= 1.07;
             rcDamage += 20;
             rcLevel++;
             rcLvBar += 5.09375;
             rcWidth += 0.00003;
             rcHeight += 0.06;
           }
         }
        }
       if(mousePressed && (mouseButton == LEFT)){
         fill(0, 0, 0);
       }
     }
   rect(218, 150 + 154, 40, 62);
   
   textSize(36);
   fill(255);
   text(" + ", 216, 192 + 154);
   
   noFill();
   rect(217, 149 + 154, 41, 63);
   
   //Random Cannon Level Box
   noStroke();
   fill(0, 0, 0);
   rect(54, 193 + 154, 163, 19);
   fill(255, 196, 0);
   if(rcLevel == 32){
     fill(255, 0, 0);
   }
   rect(54.0, 193.0 + 154.0, rcLvBar, 19.0);
   stroke(255);
   noFill();
   rect(53, 192 + 154, 164, 20);
   
   //Random Cannon Money Needed
   fill(0, 0, 0);
   rect(258, 150 + 154, 170, 62);
   
   noFill();
   rect(257, 149 + 154, 171, 63);
   
   textSize(15);
   fill(255);
   text("Space Bucks Needed: ", 269, 177 + 154);
   textSize(20);
   if(rcLevel < 32){
   fill(255);
   text("$" + (int)rcUpCost, 308, 199 + 154);
   }
   if(rcLevel == 32){
   fill(255);
   text("--", 324, 199 + 154);
   }
   
   
   
   
   
   
   
   
   
   //Mega Bomb Upgrade Sign
   
   fill(0, 0, 0);
   if(mouseX >= 52 && mouseX <= 217 && mouseY >= 149 + 154 + 77 && mouseY <= 192 + 154 + 77){
     N108.setY(450);
     noStroke();
     N108.Exhaust();
     N108.show();
     if(frameCount % 80 == 0){
        megaBomb.loop(1);
     }
     stroke(255);
     if(frameCount % 80 == 0){
      for(int i = 0; i < 100; i++){
       N103.add(new Missiles(N108));
      }
     }
     fill(198, 197, 203);
   }
   rect(53, 150 + 154 + 77, 164, 42);  
   
   textSize(17);
   fill(255);
   text("Mega Bomb", 86, 177 + 154 + 77);   
   
   noFill();
   rect(52, 149 + 154 + 77, 165, 43);
   
   //Mega Bomb Levels Display
   fill(0, 0, 0);
   rect(10, 150 + 154 + 77, 43, 61);
   noFill();
   rect(9, 149 + 154 + 77, 43, 63);
   textSize(20);
   fill(255);
   text("Lv.", 20, 177 + 154 + 77);
   text(mbLevel, 18, 203 + 154 + 77);
   
   //Mega Bomb '+' Sign
   fill(0, 0, 0);
   if(mouseX >= 217 && mouseX <= 258 && mouseY >= 149 + 154 + 77 && mouseY <= 212 + 154 + 77){
      fill(198, 197, 203);
      if(frameCount % 10 == 0 && mousePressed && (mouseButton == LEFT)){
          if((int)money - (int)mbUpCost >= 0){
            if(mbLevel < 32){
              Upgrade.loop(0);
             money -= mbUpCost;
             mbUpCost *= 1.07;
             mbDamage += 30;
             mbLevel++;
             mbLvBar += 5.09375;
           }
         }
        }
       if(mousePressed && (mouseButton == LEFT)){
         fill(0, 0, 0);
       }
     }
   rect(218, 150 + 154 + 77, 40, 62);
   
   textSize(36);
   fill(255);
   text(" + ", 216, 192 + 154 + 77);
   
   noFill();
   rect(217, 149 + 154 + 77, 41, 63);
   
   //Mega Bomb Level Box
   noStroke();
   fill(0, 0, 0);
   rect(54, 193 + 154 + 77, 163, 19);
   fill(255, 196, 0);
   if(mbLevel == 32){
     fill(255, 0, 0);
   }
   rect(54.0, 193.0 + 154.0 + 77.0, mbLvBar, 19.0);
   stroke(255);
   noFill();
   rect(53, 192 + 154 + 77, 164, 20);
   
   //Mega Bomb Money Needed
   fill(0, 0, 0);
   rect(258, 150 + 154 + 77, 170, 62);
   
   noFill();
   rect(257, 149 + 154 + 77, 171, 63);
   
   textSize(15);
   fill(255);
   text("Space Bucks Needed: ", 269, 177 + 154 + 77);
   textSize(20);
   if(mbLevel < 32){
   fill(255);
   text("$" + (int)mbUpCost, 308, 199 + 154 + 77);
   }
   if(mbLevel == 32){
   fill(255);
   text("--", 324, 199 + 154 + 77);
   }
   
   
   
   
   
   
   
   //Laser Upgrade Sign
   
   fill(0, 0, 0);
   if(mouseX >= 52 && mouseX <= 217 && mouseY >= 149 + 154 + 154 && mouseY <= 192 + 154 + 154){
     fill(207 + (int)(Math.random()*61) - 30, 255 + (int)(Math.random()*61) - 30, 0);
     rect(701, 700, 10, -647);
     N108.setX(707);
     N108.setY(700);
     noStroke();
     N108.Exhaust();
     N108.show();
     if(frameCount % 10 == 0){
        Laser.loop(0);
     }
     fill(198, 197, 203);
   }
   rect(53, 150 + 154 + 154, 164, 42);  
   
   textSize(20);
   fill(255);
   text("Laser", 107, 177 + 154 + 154);   
   
   noFill();
   rect(52, 149 + 154 + 154, 165, 43);
   
   //Laser Levels Display
   fill(0, 0, 0);
   rect(10, 150 + 154 + 154, 43, 61);
   noFill();
   rect(9, 149 + 154 + 154, 43, 63);
   textSize(20);
   fill(255);
   text("Lv.", 20, 177 + 154 + 154);
   text(lsLevel, 18, 203 + 154 + 154);
   
   //Laser '+' Sign
   fill(0, 0, 0);
   if(mouseX >= 217 && mouseX <= 258 && mouseY >= 149 + 154 + 154 && mouseY <= 212 + 154 + 154){
      fill(198, 197, 203);
      if(frameCount % 10 == 0 && mousePressed && (mouseButton == LEFT)){
          if((int)money - (int)lsUpCost >= 0){
            if(lsLevel < 32){
              Upgrade.loop(0);
             money -= lsUpCost;
             lsUpCost *= 1.07;
             lsDamage += 30;
             lsLevel++;
             lsLvBar += 5.09375;
           }
         }
        }
       if(mousePressed && (mouseButton == LEFT)){
         fill(0, 0, 0);
       }
     }
   rect(218, 150 + 154 + 154, 40, 62);
   
   textSize(36);
   fill(255);
   text(" + ", 216, 192 + 154 + 154);
   
   noFill();
   rect(217, 149 + 154 + 154, 41, 63);
   
   //Laser Level Box
   noStroke();
   fill(0, 0, 0);
   rect(54, 193 + 154 + 154, 163, 19);
   fill(255, 196, 0);
   if(lsLevel == 32){
     fill(255, 0, 0);
   }
   rect(54.0, 193.0 + 154.0 + 154.0, lsLvBar, 19.0);
   stroke(255);
   noFill();
   rect(53, 192 + 154 + 154, 164, 20);
   
   //Laser Money Needed
   fill(0, 0, 0);
   rect(258, 150 + 154 + 154, 170, 62);
   
   noFill();
   rect(257, 149 + 154 + 154, 171, 63);
   
   textSize(15);
   fill(255);
   text("Space Bucks Needed: ", 269, 177 + 154 + 154);
   textSize(20);
   if(lsLevel < 32){
   fill(255);
   text("$" + (int)lsUpCost, 308, 199 + 154 + 154);
   }
   if(lsLevel == 32){
   fill(255);
   text("--", 324, 199 + 154 + 154);
   }
   
   
   
   
   
   
   
   //Energy Shield Upgrade Sign
   
   fill(0, 0, 0);
   if(mouseX >= 52 && mouseX <= 217 && mouseY >= 149 + 154 + 154 + 77 && mouseY <= 192 + 154 + 154 + 77){
     noStroke();
     N37 = new eShield(N108);
     N37.show();
     N108.setX(707);
     N108.setY(700);
     noStroke();
     N108.Exhaust();
     N108.show();
     if(frameCount % 1 == 0){
       EnergyShield.loop(0);
     }
     stroke(255);
     fill(198, 197, 203);
   }
   rect(53, 150 + 154 + 154 + 77, 164, 42);  
   
   textSize(17);
   fill(255);
   text("Energy Shield", 78, 177 + 154 + 154 + 77);   
   
   noFill();
   rect(52, 149 + 154 + 154 + 77, 165, 43);
   
   //Energy Shield Levels Display
   fill(0, 0, 0);
   rect(10, 150 + 154 + 154 + 77, 43, 61);
   noFill();
   rect(9, 149 + 154 + 154 + 77, 43, 63);
   textSize(20);
   fill(255);
   text("Lv.", 20, 177 + 154 + 154 + 77);
   text(esLevel, 18, 203 + 154 + 154 + 77);
   
   //Energy Shield '+' Sign
   fill(0, 0, 0);
   if(mouseX >= 217 && mouseX <= 258 && mouseY >= 149 + 154 + 154 + 77 && mouseY <= 212 + 154 + 154 + 77){
      fill(198, 197, 203);
      if(frameCount % 10 == 0 && mousePressed && (mouseButton == LEFT)){
          if((int)money - (int)esUpCost >= 0){
            if(esLevel < 32){
              Upgrade.loop(0);
             money -= esUpCost;
             esUpCost *= 1.07;
             esDamage += 15;
             esLevel++;
             esLvBar += 5.09375;
           }
         }
        }
       if(mousePressed && (mouseButton == LEFT)){
         fill(0, 0, 0);
       }
     }
   rect(218, 150 + 154 + 154 + 77, 40, 62);
   
   textSize(36);
   fill(255);
   text(" + ", 216, 192 + 154 + 154 + 77);
   
   noFill();
   rect(217, 149 + 154 + 154 + 77, 41, 63);
   
   //Energy Shield Level Box
   noStroke();
   fill(0, 0, 0);
   rect(54, 193 + 154 + 154 + 77, 163, 19);
   fill(255, 196, 0);
   if(esLevel == 32){
     fill(255, 0, 0);
   }
   rect(54.0, 193.0 + 154.0 + 154.0 + 77.0, esLvBar, 19.0);
   stroke(255);
   noFill();
   rect(53, 192 + 154 + 154 + 77, 164, 20);
   
   //Energy Shield Money Needed
   fill(0, 0, 0);
   rect(258, 150 + 154 + 154 + 77, 170, 62);
   
   noFill();
   rect(257, 149 + 154 + 154 + 77, 171, 63);
   
   textSize(15);
   fill(255);
   text("Space Bucks Needed: ", 269, 177 + 154 + 154 + 77);
   textSize(20);
   if(esLevel < 32){
   fill(255);
   text("$" + (int)esUpCost, 308, 199 + 154 + 154 + 77);
   }
   if(esLevel == 32){
   fill(255);
   text("--", 324, 199 + 154 + 154 + 77);
   }
   
   
   
   
   //Fire Rate Upgrade Sign
   
   fill(0, 0, 0);
   if(mouseX >= 52 && mouseX <= 217 && mouseY >= 149 + 154 + 154 + 154 && mouseY <= 192 + 154 + 154 + 154){
     if(frameCount % 14 == 0){
       shooting.loop(0);
     }
     if(frameCount % (10 - mcFireUp) == 0){
      N106.add(new Bullet(N108));
      N105.add(new sideBullet(N108));
      N104.add(new sideBullet2(N108));
   }
 if(frameCount % (150 - wcFireUp) == 0){
      N101.add(new WingCannon(N108));
      N100.add(new WingCannon2(N108));
   }
 if(frameCount % (20 - rcFireUp) == 0){
      N99.add(new RandomCannon(N108));
    }
    fill(198, 197, 203);
  }
   rect(53, 150 + 154 + 154 + 154, 164, 42);  
   
   textSize(17);
   fill(255);
   text("Fire Rate", 98, 177 + 154 + 154 + 154);   
   
   noFill();
   rect(52, 149 + 154 + 154 + 154, 165, 43);
   
   //Fire Rate Levels Display
   fill(0, 0, 0);
   rect(10, 150 + 154 + 154 + 154, 43, 61);
   noFill();
   rect(9, 149 + 154 + 154 + 154, 43, 63);
   textSize(20);
   fill(255);
   text("Lv.", 20, 177 + 154 + 154 + 154);
   text(frLevel, 18, 203 + 154 + 154 + 154);
   
   //Fire Rate '+' Sign
   fill(0, 0, 0);
   if(mouseX >= 217 && mouseX <= 258 && mouseY >= 149 + 154 + 154 + 154 && mouseY <= 212 + 154 + 154 + 154){
      fill(198, 197, 203);
      if(frameCount % 9 == 0 && mousePressed && (mouseButton == LEFT)){
          if((int)money - (int)frUpCost >= 0){
            if(frLevel < 5){
              Upgrade.loop(0);
             money -= frUpCost;
             frUpCost *= 1.5;
             mcFireUp += 1;
             wcFireUp += 10;
             rcFireUp += 2;
             frLevel++;
             frLvBar += 32.6;
           }
         }
        }
       if(mousePressed && (mouseButton == LEFT)){
         fill(0, 0, 0);
       }
     }
   rect(218, 150 + 154 + 154 + 154, 40, 62);
   
   textSize(36);
   fill(255);
   text(" + ", 216, 192 + 154 + 154 + 154);
   
   noFill();
   rect(217, 149 + 154 + 154 + 154, 41, 63);
   
   //Fire Rate Level Box
   noStroke();
   fill(0, 0, 0);
   rect(54, 193 + 154 + 154 + 154, 163, 19);
   fill(255, 196, 0);
   if(frLevel == 5){
     fill(255, 0, 0);
   }
   rect(54.0, 193.0 + 154.0 + 154.0 + 154.0, frLvBar, 19.0);
   stroke(255);
   noFill();
   rect(53, 192 + 154 + 154 + 154, 164, 20);
   
   //Fire Rate Money Needed
   fill(0, 0, 0);
   rect(258, 150 + 154 + 154 + 154, 170, 62);
   
   noFill();
   rect(257, 149 + 154 + 154 + 154, 171, 63);
   
   textSize(15);
   fill(255);
   text("Space Bucks Needed: ", 269, 177 + 154 + 154 + 154);
   textSize(20);
   if(frLevel < 5){
   fill(255);
   text("$" + (int)frUpCost, 308, 199 + 154 + 154 + 154);
   }
   if(frLevel == 5){
   fill(255);
   text("--", 324, 199 + 154 + 154 + 154);
   }
   

   
   
   //Ship Health Upgrade Sign
   
   fill(0, 0, 0);
   if(mouseX >= 52 && mouseX <= 217 && mouseY >= 149 + 154 + 154 + 154 + 77 && mouseY <= 192 + 154 + 154 + 154 + 77){
     noFill();
      strokeWeight(2);
      stroke(0, 255, 0, flash);
      ellipse(N108.getX(), N108.getY() - 16, 100, 100);
      noStroke();
      N108.Exhaust();
      N108.show();
      stroke(255);
      strokeWeight(1);
     fill(198, 197, 203);
  }
   rect(53, 150 + 154 + 154 + 154 + 77, 164, 42);  
   
   textSize(17);
   fill(255);
   text("Max Health", 87, 177 + 154 + 154 + 154 + 77);   
   
   noFill();
   rect(52, 149 + 154 + 154 + 154 + 77, 165, 43);
   
   //Ship Health Levels Display
   fill(0, 0, 0);
   rect(10, 150 + 154 + 154 + 154 + 77, 43, 61);
   noFill();
   rect(9, 149 + 154 + 154 + 154 + 77, 43, 63);
   textSize(20);
   fill(255);
   text("Lv.", 20, 177 + 154 + 154 + 154 + 77);
   text(mhLevel, 18, 203 + 154 + 154 + 154 + 77);
   
   //Ship Health '+' Sign
   fill(0, 0, 0);
   if(mouseX >= 217 && mouseX <= 258 && mouseY >= 149 + 154 + 154 + 154 + 77 && mouseY <= 212 + 154 + 154 + 154 + 77){
      fill(198, 197, 203);
      if(frameCount % 9 == 0 && mousePressed && (mouseButton == LEFT)){
          if((int)money - (int)mhUpCost >= 0){
            if(mhLevel < 5){
              Upgrade.loop(0);
             money -= mhUpCost;
             mhUpCost *= 1.5;
             maxHealth += 60.0;
             health += 60.0;
             mhLevel++;
             mhLvBar += 32.6;
           }
         }
        }
       if(mousePressed && (mouseButton == LEFT)){
         fill(0, 0, 0);
       }
     }
   rect(218, 150 + 154 + 154 + 154 + 77, 40, 62);
   
   textSize(36);
   fill(255);
   text(" + ", 216, 192 + 154 + 154 + 154 + 77);
   
   noFill();
   rect(217, 149 + 154 + 154 + 154 + 77, 41, 63);
   
   //Ship Health Level Box
   noStroke();
   fill(0, 0, 0);
   rect(54, 193 + 154 + 154 + 154 + 77, 163, 19);
   fill(255, 196, 0);
   if(mhLevel == 5){
     fill(255, 0, 0);
   }
   rect(54.0, 193.0 + 154.0 + 154.0 + 154.0 + 77.0, mhLvBar, 19.0);
   stroke(255);
   noFill();
   rect(53, 192 + 154 + 154 + 154 + 77, 164, 20);
   
   //Ship Health Money Needed
   fill(0, 0, 0);
   rect(258, 150 + 154 + 154 + 154 + 77, 170, 62);
   
   noFill();
   rect(257, 149 + 154 + 154 + 154 + 77, 171, 63);
   
   textSize(15);
   fill(255);
   text("Space Bucks Needed: ", 269, 177 + 154 + 154 + 154 + 77);
   textSize(20);
   if(mhLevel < 5){
   fill(255);
   text("$" + (int)mhUpCost, 308, 199 + 154 + 154 + 154 + 77);
   }
   if(mhLevel == 5){
   fill(255);
   text("--", 324, 199 + 154 + 154 + 154 + 77);
   }
   
   
   
   

    
}





 //Scanning
  if(gPressed && health > 0 && Scan){
    fill(202, 255, 191, 100);
    rect(-2, -2, width + 3, height + 3);
    if(frameCount % 2 == 0){
      Scanning.loop(0);
    }
    fill(255, 0, 0, 100);
    ellipse(N49.getX(), N49.getY(), 60, 60);
    textSize(25);
    fill(0);
    text("Hover Your Mouse Over The Ship Again & Press 'G' To Continue", 85, 450);
  }
 
 //Help Menu
 if(health > 0 && key > 'c' && key < 'e' && frameCount > 565 && !rPressed && !gPressed && !Scan || health > 0 && key > 'C' && key < 'E' && frameCount > 565 && !rPressed && !gPressed && !Scan){
   fill(255, 0, 0, 100);
   ellipse(N49.getX(), N49.getY(), 60, 60);
   dPressed = true;
 }
 if(isOverShip && key > 'e' && key < 'g' && frameCount > 565 || isOverShip && key > 'E' && key < 'G' && frameCount > 565){
   dPressed = false;
 }
  if(dPressed && health > 0 && !rPressed && !gPressed && !Scan){
    fill(131, 169, 175, 200);
    rect(30, 50, 830, 755);
    textSize(30);
    fill(255);
    text("Game Guide", 360, 90);
    textSize(18);
    text("The Space Ship Will Follow Your Mouse, Move Around To Shoot'em Up!", 50, 130);
    text("Destroy Asteroids to earn Power-Up Charges And Space Bucks!", 50, 160);
    text("Bossteroids Spawn Every 4 Stages, Mega Bossteroids Every 10, Iceroids every 2.", 50, 190);   
    text("Hold Or Press 'Q' To Release Mega Bomb: 360-All-Round Air Space Clearer.", 50, 220);
    text("Hold Or Press 'W' To Fire Laser: Focused Weapon Of Destruction.", 50, 250);
    text("Hold Or Press 'E' To Deploy Energy Shield: Put It On And Ram Into Them Asteroids.", 50, 280);
    text("You Can Use Power-Ups At Any Charge Percentage, Feel Free To Fire Away!", 50, 310);
    text("Destroy Asteroids to earn High Score.", 50, 340);
    text("Pick up all the Space Bucks To Move Up In Stages!", 50, 370);
    text("Earn Space Bucks To Level Up Your Ship And Weapons, Press 'R' To Enter The Ship Yard.", 50, 400);
    text("Hover Your Mouse Over Each Weapon Name In The Ship Yard To See Which One They Are.", 50, 430);
    text("You Can Resize Your Screen By Dragging The Edges, Fit It To Your Own Screen!", 50, 460);
    text("Psst~ If The Power-Up Keys Don't Seem To Work, Click The Screen To Activate them!", 50, 490);
    text("Hint* Watch Where The Asteroids Are Going, Especially When They Are Near The Edge!", 50, 520);
    text("Don't Get Too Near Glowing Rings Around Asteroids, You May Be Able To Fly Over Them!", 50, 550);
    textSize(17);
    text("If You Fly Into An Asteroid You Might Pick Up The Space Buck Inside Them Early! Totally Worth it :D", 50, 580);
    textSize(18);
    text("There Will Be Some Left Over Space Bucks For You When You Restart.", 50, 610);
    text("Hover Your Mouse Over Your Space Ship Again And Press 'F' to Exit Out Of This Guide.", 50, 640);
    textSize(14);
    text("Asteroids Reloaded v2.0", 680, 797);
  }
  
  //Loading Screen
  if(frameCount < 565){
   loadBar = frameCount;
   if(Percent < 100){
     Percent += 0.177;
   }
   fill(0);
   rect(-2, -2, width + 3, height + 3);
   fill(255, 106, 46);
   noStroke();
   rect((int)(0.18*width), (int)(0.889*height), loadBar, 40);
   noFill();
   stroke(255);
   rect((int)(0.18*width) - 1, (int)(0.889*height) - 1, 566, 41);
   textSize(18);
   fill(255);
   text("Loading: " + (int)Percent + " %", (int)(0.18*width), (int)(0.867*height));
  }
  if(frameCount < 560){
   fill(255, 0, 0, 200);
   ellipse(450, 450, 50, 50);
 }
 if(frameCount < 266){
   textSize(25);
   fill(255);
   text("Click The Screen!", 363, 360);
   text("Hover Your Mouse On The Red Dot", 245, 400); 
 }
 if(frameCount > 266 && frameCount < 486){
   textSize(25);
   fill(255);
   text("Press 'D' For Help Menu", 312, 400);
 }
 if(frameCount > 486 && frameCount < 556){
   textSize(25);
   fill(255);
   text("Go!", 430, 400);
 }
 
 
 //Power-Up Bars & health bar Overflow Prevention
 
 /* if(laserCharge > 150){
   laserCharge = 150;
 }
 if(shieldCount > 100){
   shieldCount = 100;
 }
 if(eShieldCount > 150){
   eShieldCount = 150;
 }
 if(health < 0){
   health = 0;
 }
 if(health > maxHealth){
   health = maxHealth;
 }
 
 */
 
}


void keyPressed() {

  if(key == 'q' || key == 'Q'){
    qPressed = true;
  }
  if(key == 'w' || key == 'W'){
    wPressed = true;
  }
  if(eShieldCount > 0 && key == 'e' || eShieldCount > 0 && key == 'E'){
    ePressed = true;
  }
  if(key == 'h' || key == 'H'){
    hPressed = true;
  }
}

void keyReleased() {

  if(key == 'q' || key == 'Q'){
    qPressed = false;
  }
  if(key == 'w' || key == 'W'){
    wPressed = false;
  }
  if(eShieldCount <= 0 || key == 'e' || eShieldCount <= 0 || key == 'E'){
    ePressed = false;
  }
  if(key == 'h' || key == 'H'){
    hPressed = false;
  }

}

void shoot(){
  if(frameCount % (10 - mcFireUp) == 0){
  N46.add(new Bullet(N49));
  N45.add(new sideBullet(N49));
  N44.add(new sideBullet2(N49));
  
 }
 if(frameCount % (150 - wcFireUp) == 0){
   N41.add(new WingCannon(N49));
   N40.add(new WingCannon2(N49));
 }
 if(frameCount % (20 - rcFireUp) == 0){
   N39.add(new RandomCannon(N49));
 }
 if(frameCount % 14 == 0){
   shooting.loop(0);
 }
 
}

void shield() {
  for(int i = 0; i < 10; i++){
    if(frameCount % 5 == 0){
      megaBomb.loop(0);
    }
  N43.add(new Missiles(N49));
  }
}

void laser() {
  for(int i = 0; i < 10; i++){
    if(frameCount % 10 == 0){
      Laser.loop(0); 
    }
    N38.add(new Laser(N49));
  }
}
