.class public Laurelienribon/tweenengine/TweenManager;
.super Ljava/lang/Object;


# instance fields
.field private finishAllAnim:Z

.field private isPaused:Z

.field private final objects:Ljava/util/ArrayList;

.field private resetAnimTime:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    iput-boolean v2, p0, Laurelienribon/tweenengine/TweenManager;->isPaused:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/TweenManager;->finishAllAnim:Z

    iput-boolean v2, p0, Laurelienribon/tweenengine/TweenManager;->resetAnimTime:Z

    return-void
.end method

.method public static setAutoRemove(Laurelienribon/tweenengine/BaseTween;Z)V
    .locals 0

    iput-boolean p1, p0, Laurelienribon/tweenengine/BaseTween;->isAutoRemoveEnabled:Z

    return-void
.end method

.method public static setAutoStart(Laurelienribon/tweenengine/BaseTween;Z)V
    .locals 0

    iput-boolean p1, p0, Laurelienribon/tweenengine/BaseTween;->isAutoStartEnabled:Z

    return-void
.end method


# virtual methods
.method public add(Laurelienribon/tweenengine/BaseTween;)Laurelienribon/tweenengine/TweenManager;
    .locals 1

    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v0, p1, Laurelienribon/tweenengine/BaseTween;->isAutoStartEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Laurelienribon/tweenengine/BaseTween;->start()Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    return-object p0
.end method

.method public containsTarget(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v0, p1}, Laurelienribon/tweenengine/BaseTween;->containsTarget(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public containsTarget(Ljava/lang/Object;I)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v0, p1, p2}, Laurelienribon/tweenengine/BaseTween;->containsTarget(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 1

    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    return-void
.end method

.method public killAll()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/BaseTween;->kill()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public killTarget(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v0, p1}, Laurelienribon/tweenengine/BaseTween;->killTarget(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public killTarget(Ljava/lang/Object;I)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v0, p1, p2}, Laurelienribon/tweenengine/BaseTween;->killTarget(Ljava/lang/Object;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/TweenManager;->isPaused:Z

    iput-boolean v0, p0, Laurelienribon/tweenengine/TweenManager;->resetAnimTime:Z

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laurelienribon/tweenengine/TweenManager;->isPaused:Z

    return-void
.end method

.method public update(F)V
    .locals 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_3

    iget-boolean v0, p0, Laurelienribon/tweenengine/TweenManager;->isPaused:Z

    if-nez v0, :cond_f

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_7

    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v5

    move v3, v5

    move v2, p1

    :goto_1
    if-lt v6, v7, :cond_5

    :cond_0
    :goto_2
    if-nez v3, :cond_1

    iput-boolean v4, p0, Laurelienribon/tweenengine/TweenManager;->finishAllAnim:Z

    :cond_1
    iget-boolean v0, p0, Laurelienribon/tweenengine/TweenManager;->finishAllAnim:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/BaseTween;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Laurelienribon/tweenengine/BaseTween;->isAutoRemoveEnabled:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Laurelienribon/tweenengine/BaseTween;->free()V

    :cond_4
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    iget-boolean v0, v0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    iget-boolean v0, v0, Laurelienribon/tweenengine/BaseTween;->isPaused:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    iget-boolean v0, v0, Laurelienribon/tweenengine/BaseTween;->isKilled:Z

    if-eqz v0, :cond_6

    move v0, v3

    :goto_3
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v0

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Laurelienribon/tweenengine/TweenManager;->finishAllAnim:Z

    if-eqz v0, :cond_d

    iput-boolean v5, p0, Laurelienribon/tweenengine/TweenManager;->finishAllAnim:Z

    move v0, v1

    :goto_4
    iget-boolean v2, p0, Laurelienribon/tweenengine/TweenManager;->resetAnimTime:Z

    if-eqz v2, :cond_c

    iput-boolean v5, p0, Laurelienribon/tweenengine/TweenManager;->resetAnimTime:Z

    move v2, v1

    :goto_5
    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/BaseTween;->update(F)V

    move v0, v4

    goto :goto_3

    :cond_7
    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    move v3, v5

    move v2, p1

    :goto_6
    if-ltz v6, :cond_0

    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    iget-boolean v0, v0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    iget-boolean v0, v0, Laurelienribon/tweenengine/BaseTween;->isPaused:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    iget-boolean v0, v0, Laurelienribon/tweenengine/BaseTween;->isKilled:Z

    if-eqz v0, :cond_8

    move v0, v3

    :goto_7
    add-int/lit8 v3, v6, -0x1

    move v6, v3

    move v3, v0

    goto :goto_6

    :cond_8
    iget-boolean v0, p0, Laurelienribon/tweenengine/TweenManager;->finishAllAnim:Z

    if-eqz v0, :cond_a

    iput-boolean v5, p0, Laurelienribon/tweenengine/TweenManager;->finishAllAnim:Z

    move v0, v1

    :goto_8
    iget-boolean v2, p0, Laurelienribon/tweenengine/TweenManager;->resetAnimTime:Z

    if-eqz v2, :cond_9

    iput-boolean v5, p0, Laurelienribon/tweenengine/TweenManager;->resetAnimTime:Z

    move v2, v1

    :goto_9
    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/BaseTween;->update(F)V

    move v0, v4

    goto :goto_7

    :cond_9
    move v2, v0

    goto :goto_9

    :cond_a
    move v0, v2

    goto :goto_8

    :cond_b
    move v0, v3

    goto :goto_7

    :cond_c
    move v2, v0

    goto :goto_5

    :cond_d
    move v0, v2

    goto :goto_4

    :cond_e
    move v0, v3

    goto :goto_3

    :cond_f
    move v3, v5

    goto/16 :goto_2
.end method
