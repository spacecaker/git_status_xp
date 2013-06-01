.class Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/badlogic/gdx/physics/box2d/RayCastCallback;


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$1;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportRayFixture(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)F
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$1;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;->particleCollided:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$1;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;

    iget v1, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->atan2(FF)F

    move-result v1

    const v2, 0x42652ee0

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;->normalAngle:F

    return p4
.end method
