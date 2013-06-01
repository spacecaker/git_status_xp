.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;->free(Ljava/lang/Object;)V

    return-void
.end method
