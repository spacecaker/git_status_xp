.class public Lcom/iLoong/launcher/cling/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/iLoong/launcher/SetupMenu/Actions/aa;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static k:Lcom/iLoong/launcher/cling/i;


# instance fields
.field public i:Z

.field public j:Z

.field public l:Lcom/iLoong/launcher/desktop/iLoongLauncher;

.field public m:Landroid/content/Context;

.field public n:Landroid/content/SharedPreferences;

.field private o:Z

.field private p:Lcom/iLoong/launcher/cling/Cling;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/FrameLayout$LayoutParams;

.field private t:I

.field private u:Ljava/util/List;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "allapp"

    sput-object v0, Lcom/iLoong/launcher/cling/i;->a:Ljava/lang/String;

    const-string v0, "pageindicator"

    sput-object v0, Lcom/iLoong/launcher/cling/i;->b:Ljava/lang/String;

    const-string v0, "folder"

    sput-object v0, Lcom/iLoong/launcher/cling/i;->c:Ljava/lang/String;

    const-string v0, "select"

    sput-object v0, Lcom/iLoong/launcher/cling/i;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/iLoong/launcher/cling/i;->e:I

    const/4 v0, 0x1

    sput v0, Lcom/iLoong/launcher/cling/i;->f:I

    const/4 v0, 0x2

    sput v0, Lcom/iLoong/launcher/cling/i;->g:I

    const/4 v0, 0x3

    sput v0, Lcom/iLoong/launcher/cling/i;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/iLoong/launcher/cling/i;->i:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/cling/i;->j:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/cling/i;->o:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/iLoong/launcher/cling/i;->t:I

    iput-boolean v1, p0, Lcom/iLoong/launcher/cling/i;->v:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/cling/i;->w:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    new-instance v0, Lcom/iLoong/launcher/cling/d;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/cling/d;-><init>(Lcom/iLoong/launcher/cling/i;)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/i;->y:Ljava/lang/Runnable;

    return-void
.end method

.method public static a()Lcom/iLoong/launcher/cling/i;
    .locals 2

    sget-object v0, Lcom/iLoong/launcher/cling/i;->k:Lcom/iLoong/launcher/cling/i;

    if-nez v0, :cond_1

    const-class v1, Lcom/iLoong/launcher/cling/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iLoong/launcher/cling/i;->k:Lcom/iLoong/launcher/cling/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iLoong/launcher/cling/i;

    invoke-direct {v0}, Lcom/iLoong/launcher/cling/i;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/cling/i;->k:Lcom/iLoong/launcher/cling/i;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/iLoong/launcher/cling/i;->k:Lcom/iLoong/launcher/cling/i;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/iLoong/launcher/cling/i;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->y:Ljava/lang/Runnable;

    return-object v0
.end method

.method private a(FF)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v1, 0x4000

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v1

    new-instance v0, Lcom/iLoong/launcher/cling/m;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/iLoong/launcher/cling/m;-><init>(FFFFFZ)V

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/m;->setDuration(J)V

    invoke-virtual {v0, v6}, Lcom/iLoong/launcher/cling/m;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/cling/i;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/cling/i;->a(FF)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/cling/l;

    invoke-interface {v0}, Lcom/iLoong/launcher/cling/l;->e()I

    move-result v2

    if-ne p1, v2, :cond_2

    invoke-interface {v0}, Lcom/iLoong/launcher/cling/l;->f()V

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRefreshClingStateMsg()V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public a(III)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cling.workspace"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    if-nez v0, :cond_1

    new-instance v0, Lcom/iLoong/launcher/cling/Cling;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/cling/Cling;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->l:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v2, Lcom/iLoong/launcher/cling/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/Cling;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    aput p2, v0, v3

    const/4 v1, 0x2

    aput p3, v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/cling/Cling;->setPosition([I)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->l:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/i;->s:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->l:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->q:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/i;->q:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v3, p0, Lcom/iLoong/launcher/cling/i;->w:Z

    goto :goto_0
.end method

.method public a(IIII)V
    .locals 3

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cling.select.dismissed"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    if-nez v0, :cond_1

    new-instance v0, Lcom/iLoong/launcher/cling/Cling;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/cling/Cling;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->l:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v2, Lcom/iLoong/launcher/cling/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/Cling;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/cling/Cling;->setPosition([I)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->l:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/i;->s:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->l:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->q:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/i;->q:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 3

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cling.workspace"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "cling.select.dismissed"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/iLoong/launcher/cling/e;

    invoke-direct {v1, p0, v0, p1}, Lcom/iLoong/launcher/cling/e;-><init>(Lcom/iLoong/launcher/cling/i;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Lcom/iLoong/launcher/cling/l;)V
    .locals 3

    const/4 v2, 0x4

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    const-string v1, "cling.workspace"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRefreshClingStateMsg()V

    goto :goto_0
.end method

.method public b(Lcom/iLoong/launcher/cling/l;)I
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x4

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->i:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/iLoong/launcher/cling/i;->e:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    const-string v1, "cling.workspace"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->i:Z

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRefreshClingStateMsg()V

    sget v0, Lcom/iLoong/launcher/cling/i;->g:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    const-string v1, "cling.workspace"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v3, :cond_3

    sget v0, Lcom/iLoong/launcher/cling/i;->f:I

    goto :goto_0

    :cond_3
    sget v0, Lcom/iLoong/launcher/cling/i;->e:I

    goto :goto_0
.end method

.method public b(I)Lcom/iLoong/launcher/cling/l;
    .locals 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/cling/l;

    invoke-interface {v0}, Lcom/iLoong/launcher/cling/l;->e()I

    move-result v3

    if-eq p1, v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(III)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cling.workspace"

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    if-nez v0, :cond_1

    new-instance v0, Lcom/iLoong/launcher/cling/Cling;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/cling/Cling;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->l:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v2, Lcom/iLoong/launcher/cling/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/Cling;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    aput p2, v0, v3

    const/4 v1, 0x2

    aput p3, v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/cling/Cling;->setPosition([I)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->l:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/i;->s:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->l:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->q:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/i;->q:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v3, p0, Lcom/iLoong/launcher/cling/i;->w:Z

    goto :goto_0
.end method

.method public c(Lcom/iLoong/launcher/cling/l;)I
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x4

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->j:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/iLoong/launcher/cling/i;->e:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    const-string v1, "cling.workspace"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->j:Z

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRefreshClingStateMsg()V

    const-string v0, "launcher"

    const-string v1, "fire folder cling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/iLoong/launcher/cling/i;->g:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    const-string v1, "cling.workspace"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v3, :cond_3

    sget v0, Lcom/iLoong/launcher/cling/i;->f:I

    goto :goto_0

    :cond_3
    sget v0, Lcom/iLoong/launcher/cling/i;->e:I

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->w:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/i;->b()V

    goto :goto_0
.end method

.method public c(III)V
    .locals 3

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cling.workspace"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    if-nez v0, :cond_1

    new-instance v0, Lcom/iLoong/launcher/cling/Cling;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/cling/Cling;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->l:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v2, Lcom/iLoong/launcher/cling/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/cling/Cling;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/cling/Cling;->setPosition([I)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->l:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/i;->s:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->l:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->q:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/i;->q:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->w:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/i;->b()V

    goto :goto_0
.end method

.method public d(Lcom/iLoong/launcher/cling/l;)V
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->j:Z

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRefreshClingStateMsg()V

    goto :goto_0
.end method

.method public e(Lcom/iLoong/launcher/cling/l;)I
    .locals 3

    const/4 v2, 0x2

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    const-string v1, "cling.select.dismissed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    sget v0, Lcom/iLoong/launcher/cling/i;->h:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    const-string v1, "cling.select.dismissed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->o:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->o:Z

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRefreshClingStateMsg()V

    sget v0, Lcom/iLoong/launcher/cling/i;->g:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/iLoong/launcher/cling/i;->e:I

    goto :goto_0
.end method

.method public e()V
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->v:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/i;->b()V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->v:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/i;->b()V

    goto :goto_0
.end method

.method public g()V
    .locals 4

    const/4 v3, 0x4

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    const-string v1, "cling.workspace"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cling.workspace"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/cling/i;->a(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->w:Z

    goto :goto_0
.end method

.method public h()V
    .locals 4

    const/4 v3, 0x5

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    const-string v1, "cling.workspace"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cling.workspace"

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/cling/i;->a(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->w:Z

    goto :goto_0
.end method

.method public i()V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    const-string v1, "cling.workspace"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cling.workspace"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, v4}, Lcom/iLoong/launcher/cling/i;->a(I)V

    iput-boolean v3, p0, Lcom/iLoong/launcher/cling/i;->j:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/cling/i;->w:Z

    goto :goto_0
.end method

.method public j()V
    .locals 4

    const/4 v3, 0x2

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    const-string v1, "cling.select.dismissed"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cling.select.dismissed"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/cling/i;->a(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->w:Z

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    invoke-virtual {v1}, Lcom/iLoong/launcher/cling/Cling;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/Cling;->a()V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/cling/i;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->q:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/cling/i;->a(Landroid/view/View;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/high16 v7, 0x4000

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/i;->x:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "clingState="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/iLoong/launcher/cling/i;->t:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->q:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/Cling;->a()V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->p:Lcom/iLoong/launcher/cling/Cling;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/cling/i;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/i;->q:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/cling/i;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/cling/i;->t:I

    if-ne v0, v5, :cond_3

    invoke-virtual {p0, v5}, Lcom/iLoong/launcher/cling/i;->b(I)Lcom/iLoong/launcher/cling/l;

    move-result-object v0

    if-eqz v0, :cond_a

    check-cast v0, Lcom/iLoong/launcher/HotSeat3D/b;

    iget v1, v0, Lcom/iLoong/launcher/HotSeat3D/b;->e:I

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v2

    iget v3, v0, Lcom/iLoong/launcher/HotSeat3D/b;->f:I

    sub-int/2addr v2, v3

    iget v0, v0, Lcom/iLoong/launcher/HotSeat3D/b;->d:I

    :goto_1
    invoke-virtual {p0, v1, v2, v0}, Lcom/iLoong/launcher/cling/i;->a(III)V

    iget v0, p0, Lcom/iLoong/launcher/cling/i;->t:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/cling/i;->a(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/cling/i;->t:I

    if-ne v0, v6, :cond_4

    invoke-virtual {p0, v6}, Lcom/iLoong/launcher/cling/i;->b(I)Lcom/iLoong/launcher/cling/l;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bs;

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->b:I

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v1

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->c:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->a:I

    move v0, v1

    move v1, v3

    :goto_2
    invoke-virtual {p0, v1, v0, v2}, Lcom/iLoong/launcher/cling/i;->b(III)V

    iget v0, p0, Lcom/iLoong/launcher/cling/i;->t:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/cling/i;->a(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/iLoong/launcher/cling/i;->t:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/cling/i;->b(I)Lcom/iLoong/launcher/cling/l;

    move-result-object v1

    if-eqz v1, :cond_8

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/d/a;

    iget v3, v0, Lcom/iLoong/launcher/d/a;->x:F

    iget v4, v0, Lcom/iLoong/launcher/d/a;->width:F

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    float-to-int v4, v3

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v3

    int-to-float v3, v3

    iget v5, v0, Lcom/iLoong/launcher/d/a;->y:F

    iget v6, v0, Lcom/iLoong/launcher/d/a;->height:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iget v0, v0, Lcom/iLoong/launcher/d/a;->height:F

    div-float/2addr v0, v7

    float-to-int v0, v0

    :goto_3
    invoke-virtual {p0, v4, v3, v0}, Lcom/iLoong/launcher/cling/i;->c(III)V

    iget v0, p0, Lcom/iLoong/launcher/cling/i;->t:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/cling/i;->a(I)V

    invoke-interface {v1}, Lcom/iLoong/launcher/cling/l;->f()V

    iput-boolean v2, p0, Lcom/iLoong/launcher/cling/i;->j:Z

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/iLoong/launcher/cling/i;->t:I

    if-ne v0, v4, :cond_0

    invoke-virtual {p0, v4}, Lcom/iLoong/launcher/cling/i;->b(I)Lcom/iLoong/launcher/cling/l;

    move-result-object v1

    const/16 v6, 0x64

    const/16 v5, 0x64

    const/16 v4, 0x32

    const/16 v3, 0x1e

    if-eqz v1, :cond_7

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aw;->L()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    if-eqz v2, :cond_7

    check-cast v2, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/aj;->p()I

    move-result v4

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v3

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/aj;->q()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/aj;->r()I

    move-result v2

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aw;->M()I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_6

    const/16 v0, 0x1e

    :cond_6
    :goto_4
    invoke-virtual {p0, v4, v3, v2, v0}, Lcom/iLoong/launcher/cling/i;->a(IIII)V

    iget v0, p0, Lcom/iLoong/launcher/cling/i;->t:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/cling/i;->a(I)V

    invoke-interface {v1}, Lcom/iLoong/launcher/cling/l;->f()V

    goto/16 :goto_0

    :cond_7
    move v0, v3

    move v2, v4

    move v3, v5

    move v4, v6

    goto :goto_4

    :cond_8
    move v0, v2

    move v3, v2

    move v4, v2

    goto :goto_3

    :cond_9
    move v0, v2

    move v1, v2

    goto/16 :goto_2

    :cond_a
    move v0, v2

    move v1, v2

    goto/16 :goto_1
.end method
