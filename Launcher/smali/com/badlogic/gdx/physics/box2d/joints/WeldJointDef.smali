.class public Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;
.super Lcom/badlogic/gdx/physics/box2d/JointDef;


# instance fields
.field public final localAnchorA:Lcom/badlogic/gdx/math/Vector2;

.field public final localAnchorB:Lcom/badlogic/gdx/math/Vector2;

.field public referenceAngle:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/JointDef;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->referenceAngle:F

    sget-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WeldJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    return-void
.end method


# virtual methods
.method public initialize(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2

    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iput-object p2, p0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/physics/box2d/Body;->getLocalPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/physics/box2d/Body;->getLocalPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->referenceAngle:F

    return-void
.end method
