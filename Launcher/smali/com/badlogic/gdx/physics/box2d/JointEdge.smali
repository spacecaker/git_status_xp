.class public Lcom/badlogic/gdx/physics/box2d/JointEdge;
.super Ljava/lang/Object;


# instance fields
.field public final joint:Lcom/badlogic/gdx/physics/box2d/Joint;

.field public final other:Lcom/badlogic/gdx/physics/box2d/Body;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Joint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/JointEdge;->other:Lcom/badlogic/gdx/physics/box2d/Body;

    iput-object p2, p0, Lcom/badlogic/gdx/physics/box2d/JointEdge;->joint:Lcom/badlogic/gdx/physics/box2d/Joint;

    return-void
.end method
