.class public Lcom/iLoong/launcher/Desktop3D/bq;
.super Lcom/iLoong/launcher/Desktop3D/af;

# interfaces
.implements Lcom/iLoong/launcher/Desktop3D/bd;
.implements Lcom/iLoong/launcher/Desktop3D/bm;
.implements Lcom/iLoong/launcher/SetupMenu/Actions/aa;


# static fields
.field public static A:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public static B:Z


# instance fields
.field private final C:Ljava/lang/String;

.field private D:Lcom/iLoong/launcher/app/ak;

.field private E:Ljava/util/ArrayList;

.field private F:Lcom/iLoong/launcher/Desktop3D/aq;

.field private G:Lcom/iLoong/launcher/Desktop3D/bc;

.field private H:I

.field private I:I

.field private J:Lcom/iLoong/launcher/Desktop3D/aj;

.field private K:I

.field private L:Z

.field private M:Z

.field public u:Z

.field public v:Z

.field public w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/bq;->B:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/Desktop3D/af;-><init>(Ljava/lang/String;)V

    const-string v0, "workspace3D"

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->C:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->F:Lcom/iLoong/launcher/Desktop3D/aq;

    iput-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->G:Lcom/iLoong/launcher/Desktop3D/bc;

    iput v3, p0, Lcom/iLoong/launcher/Desktop3D/bq;->H:I

    iput-boolean v4, p0, Lcom/iLoong/launcher/Desktop3D/bq;->u:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/bq;->v:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->w:I

    iput v3, p0, Lcom/iLoong/launcher/Desktop3D/bq;->I:I

    iput v3, p0, Lcom/iLoong/launcher/Desktop3D/bq;->K:I

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/bq;->L:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/bq;->M:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->D()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->a()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->C()V

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/bc;

    const-string v1, "delCircleSomehing"

    invoke-direct {v0, v1, p0}, Lcom/iLoong/launcher/Desktop3D/bc;-><init>(Ljava/lang/String;Lcom/iLoong/launcher/Desktop3D/bq;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->G:Lcom/iLoong/launcher/Desktop3D/bc;

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/bq;->c:Z

    iput-boolean v4, p0, Lcom/iLoong/launcher/Desktop3D/bq;->transform:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/bq;->a:Z

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    const-string v1, "circled"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->K:I

    iput v3, p0, Lcom/iLoong/launcher/Desktop3D/bq;->K:I

    const-string v0, "workspace-reflect-view"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/bq;->A:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/h;

    const-string v1, "npage_indicator"

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/Desktop3D/h;-><init>(Lcom/iLoong/launcher/Desktop3D/af;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->b:Lcom/iLoong/launcher/Desktop3D/h;

    return-void
.end method

.method private F()V
    .locals 2

    const-string v0, "IconGroupOnDropView"

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->releaseFocus()V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_0
    const-string v0, "PopIconGroupView"

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bo;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bo;->b()V

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_1
    const-string v0, "IconTrans3D"

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/az;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/az;->a()V

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_2
    const-string v0, "circlePopWnd3D"

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->G:Lcom/iLoong/launcher/Desktop3D/bc;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bc;->a()V

    :cond_3
    return-void
.end method

.method private b(F)I
    .locals 3

    const/high16 v2, 0x4000

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->width:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->width:F

    div-float/2addr v1, v2

    sub-float v1, p1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bq;->scaleX:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private c(F)I
    .locals 3

    const/high16 v2, 0x4000

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->height:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->height:F

    div-float/2addr v1, v2

    sub-float v1, p1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bq;->scaleY:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->H:I

    return v0
.end method

.method protected B()V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->i()V

    goto :goto_0
.end method

.method public C()V
    .locals 2

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/aq;

    const-string v1, "CircleSomething3D"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/Desktop3D/aq;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->F:Lcom/iLoong/launcher/Desktop3D/aq;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->F:Lcom/iLoong/launcher/Desktop3D/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->F:Lcom/iLoong/launcher/Desktop3D/aq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aq;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->F:Lcom/iLoong/launcher/Desktop3D/aq;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method

.method public D()V
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1, p0}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(ILcom/iLoong/launcher/SetupMenu/Actions/aa;)V

    return-void
.end method

.method public E()V
    .locals 2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->d:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->d:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->e()Z

    :cond_0
    return-void
.end method

.method public a(Lcom/iLoong/launcher/a/f;)Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 5

    iget-object v0, p1, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.contacts.action.QUICK_CONTACT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->e:Lcom/iLoong/launcher/app/ak;

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/a/f;->a(Lcom/iLoong/launcher/app/ak;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/cb;->ap:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    sget v1, Lcom/iLoong/launcher/Desktop3D/cb;->ap:F

    invoke-static {v0, v1}, Lcom/iLoong/launcher/SetupMenu/e;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/iLoong/launcher/Desktop3D/aj;

    iget-object v2, p1, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/aj;->o()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/iLoong/launcher/Desktop3D/aj;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/iLoong/launcher/a/j;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/iLoong/launcher/Desktop3D/aj;

    iget-object v1, p1, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/iLoong/launcher/Desktop3D/at;->c(Lcom/iLoong/launcher/a/f;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/aj;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    goto :goto_0
.end method

.method public a(Lcom/iLoong/launcher/a/j;)Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p1, Lcom/iLoong/launcher/a/j;->n:I

    if-ltz v1, :cond_0

    iget v1, p1, Lcom/iLoong/launcher/a/j;->n:I

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bq;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->e:Ljava/util/ArrayList;

    iget v1, p1, Lcom/iLoong/launcher/a/j;->n:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    iget v1, p1, Lcom/iLoong/launcher/a/j;->s:I

    iget v2, p1, Lcom/iLoong/launcher/a/j;->t:I

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(II)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    goto :goto_0
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "desktopeffects"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "desktopeffects"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->a(I)V

    :cond_0
    const-string v0, "circled"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "circled"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->K:I

    :cond_1
    return-void
.end method

.method public a(Lcom/iLoong/launcher/Desktop3D/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->J:Lcom/iLoong/launcher/Desktop3D/aj;

    return-void
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->y()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;Z)Z

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->z()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->m()V

    :cond_0
    return-void
.end method

.method public a(Lcom/iLoong/launcher/app/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->D:Lcom/iLoong/launcher/app/ak;

    return-void
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;II)Z
    .locals 6

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->u()I

    move-result v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;IIIZ)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;IIIZ)Z
    .locals 4

    const/4 v3, -0x1

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    :cond_0
    const-string v0, "workspace3D"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The screen must be >= 0 and < "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "); skipping child:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    int-to-float v1, p3

    iput v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    int-to-float v1, p4

    iput v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    move-object v1, p1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v1}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v1

    iget v2, v1, Lcom/iLoong/launcher/a/j;->s:I

    if-eq v2, v3, :cond_2

    iget v2, v1, Lcom/iLoong/launcher/a/j;->t:I

    if-ne v2, v3, :cond_5

    :cond_2
    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/a/j;)V

    instance-of v0, v1, Lcom/iLoong/launcher/a/h;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/a/h;

    invoke-virtual {v3, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/a/h;)V

    :cond_3
    :goto_2
    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/bd;

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/bq;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget v2, v1, Lcom/iLoong/launcher/a/j;->s:I

    iget v3, v1, Lcom/iLoong/launcher/a/j;->t:I

    invoke-virtual {v0, p1, v2, v3}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;II)Z

    move-result v2

    goto :goto_1

    :cond_6
    instance-of v0, p1, Lcom/iLoong/launcher/Widget3D/f;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/a/j;)V

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Widget3D/f;

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Widget3D/g;->a(Lcom/iLoong/launcher/Widget3D/f;)V

    goto :goto_2
.end method

.method public a(Ljava/util/ArrayList;FF)Z
    .locals 11

    const/4 v6, -0x1

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/high16 v9, 0x4000

    const/4 v1, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->w:I

    if-eq v0, v6, :cond_2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bq;->w:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->w:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/bq;->w:I

    move v4, v2

    move-object v2, v0

    :goto_1
    if-nez v2, :cond_3

    const-string v0, "launcher"

    const-string v2, " group == null!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v4, v0, Lcom/iLoong/launcher/UI3DEngine/n;

    if-eqz v4, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->y()I

    move-result v2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->y()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move v4, v2

    move-object v2, v0

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    invoke-virtual {v2, v4}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(I)V

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v0

    iget v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v3, v9

    add-float/2addr v1, v3

    invoke-direct {p0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->b(F)I

    move-result v1

    iget v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v0, v9

    add-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->c(F)I

    move-result v0

    invoke-virtual {v2, p1, v1, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Ljava/util/ArrayList;II)Z

    move-result v1

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v3, v0, Lcom/iLoong/launcher/Desktop3D/ai;

    if-eqz v3, :cond_7

    move-object v2, v0

    check-cast v2, Lcom/iLoong/launcher/Desktop3D/ai;

    iget-object v2, v2, Lcom/iLoong/launcher/Desktop3D/ai;->a:Lcom/iLoong/launcher/a/g;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->setTag(Ljava/lang/Object;)V

    new-array v3, v10, [I

    invoke-direct {p0, p2}, Lcom/iLoong/launcher/Desktop3D/bq;->b(F)I

    move-result v4

    aput v4, v3, v5

    invoke-direct {p0, p3}, Lcom/iLoong/launcher/Desktop3D/bq;->c(F)I

    move-result v4

    aput v4, v3, v1

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setTag(Ljava/lang/Object;)V

    iget-boolean v3, v2, Lcom/iLoong/launcher/a/g;->g:Z

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v3, 0x5

    invoke-virtual {v2, p0, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->remove()V

    goto :goto_2

    :cond_6
    iget-boolean v2, v2, Lcom/iLoong/launcher/a/g;->h:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v3, 0x6

    invoke-virtual {v2, p0, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    goto :goto_3

    :cond_7
    iget v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v5

    iget v5, v5, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    add-float/2addr v5, v3

    iget v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v6

    iget v6, v6, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    add-float/2addr v6, v3

    invoke-virtual {v2, v4}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(I)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v3

    iget v7, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v8, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/iLoong/launcher/Desktop3D/bq;->b(F)I

    move-result v7

    iget v8, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v3, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v3, v9

    add-float/2addr v3, v8

    invoke-direct {p0, v3}, Lcom/iLoong/launcher/Desktop3D/bq;->c(F)I

    move-result v3

    invoke-virtual {v2, p1, v7, v3}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Ljava/util/ArrayList;II)Z

    move-result v7

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->h()I

    move-result v2

    if-ne v2, v10, :cond_8

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;Z)V

    move v1, v7

    goto/16 :goto_2

    :cond_8
    if-eqz v7, :cond_9

    instance-of v2, v0, Lcom/iLoong/launcher/widget/c;

    if-eqz v2, :cond_9

    move-object v2, v0

    check-cast v2, Lcom/iLoong/launcher/widget/c;

    invoke-virtual {v2}, Lcom/iLoong/launcher/widget/c;->a()Lcom/iLoong/launcher/a/c;

    move-result-object v2

    iget v2, v2, Lcom/iLoong/launcher/a/c;->n:I

    invoke-static {v0, v2}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendMoveWidgetMsg(Lcom/iLoong/launcher/UI3DEngine/View3D;I)V

    :cond_9
    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;Z)V

    iget-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/bq;->u:Z

    if-eqz v2, :cond_a

    :cond_a
    if-eqz v7, :cond_d

    instance-of v2, v0, Lcom/iLoong/launcher/Desktop3D/u;

    if-eqz v2, :cond_d

    const-string v2, "test"

    const-string v3, "workspace3D add to database"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    check-cast v2, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v2}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v3

    iput v4, v3, Lcom/iLoong/launcher/a/j;->n:I

    iget v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    float-to-int v2, v2

    iput v2, v3, Lcom/iLoong/launcher/a/j;->p:I

    iget v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    float-to-int v2, v2

    iput v2, v3, Lcom/iLoong/launcher/a/j;->q:I

    invoke-static {v3}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/a/j;)V

    instance-of v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v2, :cond_b

    move-object v2, v0

    check-cast v2, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/iLoong/launcher/a/j;)V

    :cond_b
    instance-of v2, v0, Lcom/iLoong/launcher/Desktop3D/bd;

    if-eqz v2, :cond_d

    instance-of v2, v3, Lcom/iLoong/launcher/a/h;

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v4

    move-object v2, v3

    check-cast v2, Lcom/iLoong/launcher/a/h;

    invoke-virtual {v4, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/a/h;)V

    :cond_c
    move-object v2, v0

    check-cast v2, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v2, v3}, Lcom/iLoong/launcher/Desktop3D/u;->a(Lcom/iLoong/launcher/a/j;)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v2, p0, v10}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    :cond_d
    if-eqz v7, :cond_f

    iget v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    float-to-int v4, v2

    iget v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    float-to-int v8, v2

    int-to-float v2, v4

    cmpl-float v2, p2, v2

    if-nez v2, :cond_e

    int-to-float v2, v8

    cmpl-float v2, p3, v2

    if-eqz v2, :cond_f

    :cond_e
    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->v:Z

    invoke-virtual {v0, v5, v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v3, 0x3f00

    int-to-float v4, v4

    int-to-float v5, v8

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    :cond_f
    move v1, v7

    goto/16 :goto_2
.end method

.method public addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    const-string v0, "CircleSomething3D"

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aq;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->F:Lcom/iLoong/launcher/Desktop3D/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->F:Lcom/iLoong/launcher/Desktop3D/aq;

    invoke-super {p0, v0, p1}, Lcom/iLoong/launcher/Desktop3D/af;->addViewBefore(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/iLoong/launcher/Desktop3D/af;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_0
.end method

.method public b(FF)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->G:Lcom/iLoong/launcher/Desktop3D/bc;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->I:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/iLoong/launcher/Desktop3D/bc;->a(FFI)V

    return-void
.end method

.method public b(Lcom/iLoong/launcher/UI3DEngine/View3D;II)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v1

    iget v0, v1, Lcom/iLoong/launcher/a/j;->n:I

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bq;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    :cond_0
    const-string v1, "workspace3D"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The screen must be >= 0 and < "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "); skipping child:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/iLoong/launcher/Widget3D/f;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/a/j;)V

    check-cast p1, Lcom/iLoong/launcher/Widget3D/f;

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Widget3D/g;->a(Lcom/iLoong/launcher/Widget3D/f;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bq;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    iget v2, v1, Lcom/iLoong/launcher/a/j;->u:I

    iget v1, v1, Lcom/iLoong/launcher/a/j;->v:I

    invoke-virtual {v0, p1, v2, v1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;II)Z

    instance-of v1, p1, Lcom/iLoong/launcher/Desktop3D/bd;

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/bq;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    :cond_3
    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->f()V

    goto :goto_0
.end method

.method public b(Lcom/iLoong/launcher/a/j;)V
    .locals 7

    const/4 v5, 0x0

    iget v0, p1, Lcom/iLoong/launcher/a/j;->l:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->z()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u()V

    return-void

    :pswitch_0
    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/a/f;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/a/f;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    iget v2, p1, Lcom/iLoong/launcher/a/j;->n:I

    iget v3, p1, Lcom/iLoong/launcher/a/j;->p:I

    iget v4, p1, Lcom/iLoong/launcher/a/j;->q:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;IIIZ)Z

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->f()Lcom/iLoong/launcher/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/a;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v1

    iget-wide v1, v1, Lcom/iLoong/launcher/a/j;->k:J

    iget-wide v3, p1, Lcom/iLoong/launcher/a/j;->k:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string v1, "test"

    const-string v2, "root 3d have opend folder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/b;->e()V

    goto :goto_0

    :cond_0
    move-object v6, p1

    check-cast v6, Lcom/iLoong/launcher/a/h;

    new-instance v1, Lcom/iLoong/launcher/d/a;

    invoke-direct {v1, v6}, Lcom/iLoong/launcher/d/a;-><init>(Lcom/iLoong/launcher/a/h;)V

    iget v2, p1, Lcom/iLoong/launcher/a/j;->n:I

    iget v3, p1, Lcom/iLoong/launcher/a/j;->p:I

    iget v4, p1, Lcom/iLoong/launcher/a/j;->q:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;IIIZ)Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->D:Lcom/iLoong/launcher/app/ak;

    invoke-virtual {v1, v0, v6}, Lcom/iLoong/launcher/d/a;->a(Lcom/iLoong/launcher/app/ak;Lcom/iLoong/launcher/a/h;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Lcom/iLoong/launcher/UI3DEngine/View3D;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iget v3, v0, Lcom/iLoong/launcher/a/j;->n:I

    if-ltz v3, :cond_1

    iget v3, v0, Lcom/iLoong/launcher/a/j;->n:I

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/bq;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->e:Ljava/util/ArrayList;

    iget v0, v0, Lcom/iLoong/launcher/a/j;->n:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    move v0, v2

    goto :goto_0
.end method

.method public b(Ljava/util/ArrayList;FF)Z
    .locals 6

    const/4 v2, 0x0

    const/high16 v5, 0x4000

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->y()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget v2, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v1, v5

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bq;->width:F

    div-float/2addr v3, v5

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/bq;->width:F

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/bq;->scaleX:F

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bq;->height:F

    div-float/2addr v3, v5

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/bq;->height:F

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/bq;->scaleY:F

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    invoke-virtual {v0, p1, v2, v1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Ljava/util/ArrayList;FF)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->F()V

    invoke-super {p0, p1}, Lcom/iLoong/launcher/Desktop3D/af;->c(I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->F()V

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->d:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->d()V

    invoke-virtual {p0, v0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->a(FF)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->getUser()F

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->y:F

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a:I

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->G:Lcom/iLoong/launcher/Desktop3D/bc;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    iget v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bc;->b(I)V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->y()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v3, v2, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iput v4, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a:I

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/af;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v0

    iget-boolean v0, v0, Lcom/iLoong/launcher/cling/i;->j:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRefreshClingStateMsg()V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0
.end method

.method public e()Lcom/iLoong/launcher/Desktop3D/aj;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->J:Lcom/iLoong/launcher/Desktop3D/aj;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->H:I

    return-void
.end method

.method f(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->g()V

    return-void
.end method

.method public f()Z
    .locals 2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->u()I

    move-result v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->r()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendStartCoverMTKWidgetMsg()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->M:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->E()V

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->F()V

    invoke-super {p0}, Lcom/iLoong/launcher/Desktop3D/af;->hide()V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendHideWorkspaceMsg()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->B()V

    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v0

    iget-boolean v0, v0, Lcom/iLoong/launcher/cling/i;->j:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRefreshClingStateMsg()V

    :cond_0
    return-void
.end method

.method public keyDown(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/iLoong/launcher/Desktop3D/af;->keyDown(I)Z

    move-result v0

    goto :goto_0
.end method

.method public keyUp(I)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/iLoong/launcher/Desktop3D/af;->keyUp(I)Z

    move-result v0

    return v0
.end method

.method public multiTouch2(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x0

    const/high16 v5, 0x41f0

    const/4 v0, 0x1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->K:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->L:Z

    if-nez v1, :cond_2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v1

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v2

    sub-float/2addr v1, v2

    const-string v2, "testdrag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "zoomDst="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v2, v1, v6

    if-ltz v2, :cond_1

    cmpg-float v2, v1, v5

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmpl-float v1, v1, v5

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v1, p0, v7}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bq;->d:I

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e(I)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->K:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->L:Z

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v1

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v2

    sub-float/2addr v1, v2

    const-string v2, "testdrag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "zoomDst="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v2, v1, v6

    if-ltz v2, :cond_3

    cmpg-float v2, v1, v5

    if-ltz v2, :cond_0

    :cond_3
    cmpl-float v1, v1, v5

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v1, p0, v7}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bq;->d:I

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e(I)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->z()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->multiTouch2(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->I:I

    :goto_1
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->F:Lcom/iLoong/launcher/Desktop3D/aq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aq;->show()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    iget-object v1, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    const-string v2, "CircleSomething3D"

    if-ne v1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/iLoong/launcher/Desktop3D/af;->multiTouch2(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->I:I

    goto :goto_1
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/16 v1, 0x2710

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    :cond_0
    return-void
.end method

.method public onClick(FF)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/af;->onClick(FF)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->B()V

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto :goto_0
.end method

.method public onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, -0x2710

    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    if-eqz v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    packed-switch p2, :pswitch_data_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_0
    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/String;

    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->u()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->z()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v5

    const/4 v4, 0x0

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    instance-of v6, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    if-eqz v6, :cond_17

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    :goto_3
    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    iget v4, v5, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    iput v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t:I

    iget v4, v5, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    iput v4, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->u:I

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->C:Z

    if-eqz v0, :cond_7

    sput-boolean v3, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->C:Z

    :goto_4
    invoke-virtual {v5}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->r()V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->b(I)Z

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    const-string v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->u()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    const-string v1, "firt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_2

    :cond_6
    const-string v1, "last"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->r()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_2

    :cond_7
    sput-boolean v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->C:Z

    goto :goto_4

    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->setTag(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->J:Lcom/iLoong/launcher/Desktop3D/aj;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto/16 :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->releaseFocus()V

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto/16 :goto_1

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v3, v1, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v3, :cond_9

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aj;->i()V

    goto :goto_5

    :pswitch_4
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v3

    goto/16 :goto_1

    :cond_c
    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/ao;

    if-eqz v0, :cond_e

    packed-switch p2, :pswitch_data_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto/16 :goto_1

    :pswitch_6
    check-cast p1, Lcom/iLoong/launcher/Desktop3D/ao;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_d
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->releaseFocus()V

    invoke-virtual {p1}, Lcom/iLoong/launcher/Desktop3D/ao;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto/16 :goto_1

    :cond_e
    instance-of v0, p1, Lcom/iLoong/launcher/widget/c;

    if-eqz v0, :cond_12

    packed-switch p2, :pswitch_data_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto/16 :goto_1

    :pswitch_7
    check-cast p1, Lcom/iLoong/launcher/widget/c;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_10
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->releaseFocus()V

    invoke-virtual {p1}, Lcom/iLoong/launcher/widget/c;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto/16 :goto_1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v2, :cond_f

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->i()V

    goto :goto_6

    :cond_12
    instance-of v0, p1, Lcom/iLoong/launcher/Widget3D/f;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Widget3D/f;

    packed-switch p2, :pswitch_data_4

    goto/16 :goto_0

    :pswitch_8
    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/f;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->setTag(Ljava/lang/Object;)V

    :cond_13
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->releaseFocus()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto/16 :goto_1

    :cond_14
    instance-of v0, p1, Lcom/iLoong/launcher/d/a;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/d/a;

    packed-switch p2, :pswitch_data_5

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-virtual {v0}, Lcom/iLoong/launcher/d/a;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->releaseFocus()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto/16 :goto_1

    :cond_16
    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/cd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->G:Lcom/iLoong/launcher/Desktop3D/bc;

    invoke-virtual {v0, p2}, Lcom/iLoong/launcher/Desktop3D/bc;->a(I)Z

    move v0, v3

    goto/16 :goto_1

    :cond_17
    move-object v0, v4

    goto/16 :goto_3

    :cond_18
    move v1, v2

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->v:Z

    if-eqz v0, :cond_1

    instance-of v0, p2, Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->v:Z

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->f:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->k:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->F:Lcom/iLoong/launcher/Desktop3D/aq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aq;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowWorkspaceMsg()V

    :cond_0
    move-object v0, p2

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->getTarget()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/ai;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v2, 0x5

    invoke-virtual {v1, p0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->remove()V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/af;->onEvent(ILaurelienribon/tweenengine/BaseTween;)V

    return-void
.end method

.method public onLongClick(FF)Z
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/af;->onLongClick(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->setTag(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->L:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchDown(FFI)Z
    .locals 1

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendHideWorkspaceMsg()V

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/Desktop3D/af;->onTouchDown(FFI)Z

    move-result v0

    return v0
.end method

.method public onTouchUp(FFI)Z
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->L:Z

    if-eqz v0, :cond_0

    iput v4, p0, Lcom/iLoong/launcher/Desktop3D/bq;->k:F

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/Desktop3D/af;->onTouchUp(FFI)Z

    move-result v0

    const-string v1, "widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "xScale,mVelocityX,circle="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bq;->f:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bq;->k:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/bq;->F:Lcom/iLoong/launcher/Desktop3D/aq;

    invoke-virtual {v3}, Lcom/iLoong/launcher/Desktop3D/aq;->isVisible()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "testtetstest"

    const-string v2, " workspace3D onTouchUp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->L:Z

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->f:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->k:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->F:Lcom/iLoong/launcher/Desktop3D/aq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aq;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/bq;->v:Z

    if-nez v1, :cond_1

    const-string v1, "launcher"

    const-string v2, "touchUp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendMoveInMTKWidgetMsg()V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowWorkspaceMsg()V

    :cond_1
    return v0
.end method

.method public scroll(FFFF)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->L:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->B()V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendMoveOutMTKWidgetMsg()V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/iLoong/launcher/Desktop3D/af;->scroll(FFFF)Z

    move-result v0

    goto :goto_0
.end method

.method public setScaleZ(F)V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v2, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScaleZ(F)V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->scaleX:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->getUser()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowWorkspaceMsg()V

    :cond_0
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->M:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendStopCoverMTKWidgetMsg()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->M:Z

    :cond_1
    invoke-super {p0}, Lcom/iLoong/launcher/Desktop3D/af;->show()V

    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v0

    iget-boolean v0, v0, Lcom/iLoong/launcher/cling/i;->j:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRefreshClingStateMsg()V

    :cond_2
    return-void
.end method

.method protected v()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Workspace3D"

    const-string v1, "finishAutoEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/iLoong/launcher/Desktop3D/af;->v()V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->f:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->k:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendMoveInMTKWidgetMsg()V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowWorkspaceMsg()V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->z()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->t()V

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->o()V

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendCancelWaitClingMsg()V

    const/16 v0, 0xa

    invoke-virtual {p0, p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    :cond_1
    return-void
.end method

.method public x()Z
    .locals 1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->u()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->d:I

    return v0
.end method

.method public z()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;
    .locals 2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->d:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bq;->d:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    goto :goto_0
.end method
