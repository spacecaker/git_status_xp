.class Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    return-void
.end method


# virtual methods
.method public translate(FF)V
    .locals 5

    const/high16 v4, 0x4000

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    const v1, 0x3a83126f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->getWidth()F

    move-result v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->getHeight()F

    move-result v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;->particleCollided:Z

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;->startPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;->endPoint:Lcom/badlogic/gdx/math/Vector2;

    add-float/2addr v0, p1

    add-float/2addr v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;->world:Lcom/badlogic/gdx/physics/box2d/World;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;->rayCallBack:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;->startPoint:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;->endPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/World;->rayCast(Lcom/badlogic/gdx/physics/box2d/RayCastCallback;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;->particleCollided:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D;->normalAngle:F

    mul-float/2addr v0, v4

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->angle:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4334

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->angle:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->angle:F

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->angleCos:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->angle:F

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->angleSin:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->velocity:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->angleCos:F

    mul-float p1, v0, v1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->velocity:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitterBox2D$ParticleBox2D;->angleSin:F

    mul-float p2, v0, v1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->translate(FF)V

    goto :goto_0
.end method
