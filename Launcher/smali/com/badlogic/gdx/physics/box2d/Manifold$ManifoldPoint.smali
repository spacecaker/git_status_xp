.class public Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;
.super Ljava/lang/Object;


# instance fields
.field public contactID:I

.field public final localPoint:Lcom/badlogic/gdx/math/Vector2;

.field public normalImpulse:F

.field public tangentImpulse:F

.field final synthetic this$0:Lcom/badlogic/gdx/physics/box2d/Manifold;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/Manifold;)V
    .locals 1

    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;->this$0:Lcom/badlogic/gdx/physics/box2d/Manifold;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;->localPoint:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;->contactID:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;->contactID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;->localPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;->normalImpulse:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldPoint;->tangentImpulse:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
