.class public Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;
.super Lcom/badlogic/gdx/physics/box2d/Joint;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/physics/box2d/Joint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    return-void
.end method

.method private native jniGetMaxForce(J)F
.end method

.method private native jniGetMaxTorque(J)F
.end method

.method private native jniSetMaxForce(JF)V
.end method

.method private native jniSetMaxTorque(JF)V
.end method


# virtual methods
.method public getMaxForce()F
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;->jniGetMaxForce(J)F

    move-result v0

    return v0
.end method

.method public getMaxTorque()F
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;->jniGetMaxTorque(J)F

    move-result v0

    return v0
.end method

.method public setMaxForce(F)V
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;->jniSetMaxForce(JF)V

    return-void
.end method

.method public setMaxTorque(F)V
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;->jniSetMaxTorque(JF)V

    return-void
.end method
