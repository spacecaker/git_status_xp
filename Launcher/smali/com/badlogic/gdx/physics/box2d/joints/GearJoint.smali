.class public Lcom/badlogic/gdx/physics/box2d/joints/GearJoint;
.super Lcom/badlogic/gdx/physics/box2d/Joint;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/physics/box2d/Joint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    return-void
.end method

.method private native jniGetRatio(J)F
.end method

.method private native jniSetRatio(JF)V
.end method


# virtual methods
.method public getRatio()F
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/GearJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/GearJoint;->jniGetRatio(J)F

    move-result v0

    return v0
.end method

.method public setRatio(F)V
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/GearJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/GearJoint;->jniSetRatio(JF)V

    return-void
.end method
