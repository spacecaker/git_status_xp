.class public Lcom/badlogic/gdx/physics/box2d/MassData;
.super Ljava/lang/Object;


# instance fields
.field public I:F

.field public final center:Lcom/badlogic/gdx/math/Vector2;

.field public mass:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/MassData;->center:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method
