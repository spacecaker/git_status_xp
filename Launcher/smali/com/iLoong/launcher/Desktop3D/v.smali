.class public Lcom/iLoong/launcher/Desktop3D/v;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

# interfaces
.implements Lcom/iLoong/launcher/SetupMenu/Actions/aa;


# static fields
.field public static d:F

.field public static e:F

.field public static f:F

.field public static i:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public static j:Lcom/badlogic/gdx/graphics/g2d/NinePatch;


# instance fields
.field public a:Lcom/iLoong/launcher/Desktop3D/f;

.field public b:Lcom/iLoong/launcher/Desktop3D/ah;

.field public c:Ljava/util/ArrayList;

.field public h:I

.field private k:Lcom/iLoong/launcher/UI3DEngine/View3D;

.field private l:F

.field private m:F

.field private n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/high16 v0, 0x425c

    const/16 v2, 0x3c

    sput v0, Lcom/iLoong/launcher/Desktop3D/v;->d:F

    sput v0, Lcom/iLoong/launcher/Desktop3D/v;->e:F

    const/high16 v0, 0x4170

    sput v0, Lcom/iLoong/launcher/Desktop3D/v;->f:F

    const-string v0, "shell-select-page-bg-unselect"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    const-string v0, "shell-select-page-bg-select"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/v;->i:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-object v1, v6

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/v;->j:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    const/high16 v3, 0x43f0

    const/high16 v1, 0x4270

    const/high16 v0, 0x3f80

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->l:F

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->m:F

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/v;->o:I

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/v;->h:I

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/ah;

    const-string v2, "page_select"

    invoke-direct {v1, v2}, Lcom/iLoong/launcher/Desktop3D/ah;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-virtual {v1, p0}, Lcom/iLoong/launcher/Desktop3D/ah;->a(Lcom/iLoong/launcher/Desktop3D/v;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/v;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/f;

    const-string v2, "page_edit"

    invoke-direct {v1, v2}, Lcom/iLoong/launcher/Desktop3D/f;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    invoke-virtual {v1, p0}, Lcom/iLoong/launcher/Desktop3D/f;->a(Lcom/iLoong/launcher/Desktop3D/v;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/v;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/f;->hide()V

    new-instance v1, Lcom/iLoong/launcher/UI3DEngine/View3D;

    const-string v2, "page_mode"

    invoke-direct {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/v;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/v;->i()V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v1, v3

    cmpg-float v2, v2, v0

    if-gez v2, :cond_0

    div-float v0, v1, v3

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/v;->d:F

    mul-float/2addr v2, v1

    sput v2, Lcom/iLoong/launcher/Desktop3D/v;->d:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/v;->e:F

    mul-float/2addr v2, v1

    sput v2, Lcom/iLoong/launcher/Desktop3D/v;->e:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/v;->l:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/v;->l:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/v;->m:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/v;->m:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/v;->f:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    sput v0, Lcom/iLoong/launcher/Desktop3D/v;->f:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->transform:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v1, 0x3

    const v3, 0x3e99999a

    const/4 v7, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ah;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ah;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/ah;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lcom/iLoong/launcher/Desktop3D/f;->a(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/f;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    iput v7, p0, Lcom/iLoong/launcher/Desktop3D/v;->h:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ah;->a()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    invoke-virtual {v0, v7}, Lcom/iLoong/launcher/Desktop3D/f;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->h:I

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    iput p1, v0, Lcom/iLoong/launcher/Desktop3D/ah;->b:I

    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    return-void
.end method

.method public a(ILcom/iLoong/launcher/Desktop3D/CellLayout3D;)V
    .locals 5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v2, p1

    :goto_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/v;->f()I

    move-result v0

    if-lt v2, v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/i;->a()Lcom/iLoong/launcher/theme/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/v;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/c;->a(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    invoke-static {p1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendAddWorkspaceCellMsg(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v1

    if-lt v3, v1, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    instance-of v4, v1, Lcom/iLoong/launcher/Desktop3D/u;

    if-eqz v4, :cond_2

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v1}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v1

    iput v2, v1, Lcom/iLoong/launcher/a/j;->n:I

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/a/j;)V

    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1
.end method

.method public a(IZ)V
    .locals 6

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move v3, p1

    :goto_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/v;->f()I

    move-result v1

    if-lt v3, v1, :cond_0

    if-nez p2, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getActors()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/v;->setTag(Ljava/lang/Object;)V

    :goto_1
    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/i;->a()Lcom/iLoong/launcher/theme/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/v;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/c;->a(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    invoke-static {p1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRemoveWorkspaceCellMsg(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v2, 0x0

    move v4, v2

    :goto_2
    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v2

    if-lt v4, v2, :cond_1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    instance-of v5, v2, Lcom/iLoong/launcher/Desktop3D/u;

    if-eqz v5, :cond_2

    check-cast v2, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v2}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v2

    iput v3, v2, Lcom/iLoong/launcher/a/j;->n:I

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/a/j;)V

    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/v;->setTag(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 1

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/v;->n:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/ah;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/f;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;II)V
    .locals 7

    const/high16 v3, 0x4000

    const/high16 v4, 0x3f80

    const/4 v6, 0x0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->width:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->height:F

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/v;->x:F

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/v;->y:F

    iput p3, p0, Lcom/iLoong/launcher/Desktop3D/v;->o:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    iput p2, v0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->o:I

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/ah;->c:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->o:I

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/f;->a:I

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/v;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/ah;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ah;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/ah;->e()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/f;->a(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/f;->show()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->h:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const-string v1, "page-controlle-c"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->l:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/v;->m:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setSize(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->width:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/v;->l:F

    sub-float/2addr v1, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/v;->f:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    sget v1, Lcom/iLoong/launcher/Desktop3D/v;->f:F

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getWidth()F

    move-result v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getHeight()F

    move-result v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput v6, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleX:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput v6, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Back;->OUT:Laurelienribon/tweenengine/equations/Back;

    const/high16 v3, 0x3f00

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 7

    const/4 v4, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/ah;->a(Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/ah;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e99999a

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    return v0
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    iput p1, v0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    return-void
.end method

.method public b(Ljava/util/ArrayList;II)V
    .locals 7

    const/high16 v3, 0x4000

    const/high16 v4, 0x3f80

    const/4 v6, 0x0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->width:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->height:F

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/v;->x:F

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/v;->y:F

    iput p3, p0, Lcom/iLoong/launcher/Desktop3D/v;->o:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    iput p2, v0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->o:I

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/ah;->c:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->o:I

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/f;->a:I

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/v;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/ah;->b(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const-string v1, "page-controlle-b"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    sget v1, Lcom/iLoong/launcher/Desktop3D/v;->d:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/v;->e:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setSize(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getWidth()F

    move-result v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getHeight()F

    move-result v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    sget v1, Lcom/iLoong/launcher/Desktop3D/v;->f:F

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->height:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/v;->f:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput v6, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleX:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput v6, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Back;->OUT:Laurelienribon/tweenengine/equations/Back;

    const/high16 v3, 0x3f00

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->h:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->o:I

    return v0
.end method

.method public c(I)V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    iput p1, v0, Lcom/iLoong/launcher/Desktop3D/ah;->c:I

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/v;->o:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "home_page"

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/v;->o:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public d()Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/i;->a()Lcom/iLoong/launcher/theme/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/c;->a(I)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->c:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/iLoong/launcher/Desktop3D/ah;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;IZ)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    return-object v0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ah;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/ah;->a(I)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/f;->a()V

    return-void
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public g()V
    .locals 2

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ah;->show()V

    return-void
.end method

.method public i()V
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1, p0}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(ILcom/iLoong/launcher/SetupMenu/Actions/aa;)V

    return-void
.end method

.method public onClick(FF)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "click"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ViewGroup3D onClick:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/v;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/v;->touchable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/v;->visible:Z

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/v;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-gez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/Desktop3D/v;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v3

    iget-boolean v4, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v4, :cond_3

    iget-boolean v4, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v4, :cond_4

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/v;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/v;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/v;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/v;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5}, Lcom/iLoong/launcher/UI3DEngine/View3D;->pointerInParent(FF)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-ne v3, v4, :cond_6

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/ah;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/v;->a()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/f;->b()V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/v;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v3, v4}, Lcom/iLoong/launcher/Desktop3D/v;->toLocalCoordinates(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/v;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/v;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onClick(FF)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object v3, p0, Lcom/iLoong/launcher/Desktop3D/v;->lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    goto :goto_0
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 7

    const/high16 v3, 0x4000

    const/high16 v4, 0x3f80

    const/4 v6, 0x0

    instance-of v0, p2, Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    check-cast p2, Laurelienribon/tweenengine/Tween;

    invoke-virtual {p2}, Laurelienribon/tweenengine/Tween;->getTarget()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->h:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const-string v1, "page-controlle-b"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    sget v1, Lcom/iLoong/launcher/Desktop3D/v;->d:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/v;->e:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setSize(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    sget v1, Lcom/iLoong/launcher/Desktop3D/v;->f:F

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->height:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/v;->f:F

    sub-float/2addr v1, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/v;->e:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getWidth()F

    move-result v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getHeight()F

    move-result v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput v6, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleX:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput v6, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Back;->OUT:Laurelienribon/tweenengine/equations/Back;

    const/high16 v3, 0x3f00

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const-string v1, "page-controlle-c"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->l:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/v;->m:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setSize(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/v;->width:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/v;->l:F

    sub-float/2addr v1, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/v;->f:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    sget v1, Lcom/iLoong/launcher/Desktop3D/v;->f:F

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    goto :goto_0
.end method

.method public onTouchDown(FFI)Z
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->pointerInAbs(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onTouchDown(FFI)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchUp(FFI)Z
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/v;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->pointerInAbs(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onTouchUp(FFI)Z

    move-result v0

    goto :goto_0
.end method
