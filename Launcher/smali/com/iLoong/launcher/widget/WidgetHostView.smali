.class public Lcom/iLoong/launcher/widget/WidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:J

.field public c:I

.field public d:Landroid/graphics/Bitmap;

.field private e:Z

.field private f:Lcom/iLoong/launcher/widget/b;

.field private g:Landroid/view/LayoutInflater;

.field private h:Ljava/lang/Object;

.field private i:Lcom/iLoong/launcher/widget/c;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->h:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->a:Ljava/lang/Object;

    iput-object v2, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->i:Lcom/iLoong/launcher/widget/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->j:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->b:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->c:I

    iput-object v2, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->d:Landroid/graphics/Bitmap;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->g:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/widget/WidgetHostView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/iLoong/launcher/widget/WidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/iLoong/launcher/widget/WidgetHostView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->e:Z

    return-void
.end method

.method static synthetic b(Lcom/iLoong/launcher/widget/WidgetHostView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->e:Z

    return v0
.end method

.method private c()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->e:Z

    iget-object v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->f:Lcom/iLoong/launcher/widget/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iLoong/launcher/widget/b;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/widget/b;-><init>(Lcom/iLoong/launcher/widget/WidgetHostView;)V

    iput-object v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->f:Lcom/iLoong/launcher/widget/b;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->f:Lcom/iLoong/launcher/widget/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/widget/b;->a()V

    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postCheckForLongClick:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->f:Lcom/iLoong/launcher/widget/b;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/iLoong/launcher/widget/WidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a()Lcom/iLoong/launcher/widget/c;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->i:Lcom/iLoong/launcher/widget/c;

    return-object v0
.end method

.method public b()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->i:Lcom/iLoong/launcher/widget/c;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->i:Lcom/iLoong/launcher/widget/c;

    invoke-virtual {v2}, Lcom/iLoong/launcher/widget/c;->a()Lcom/iLoong/launcher/a/c;

    move-result-object v2

    iget-boolean v2, v2, Lcom/iLoong/launcher/a/c;->b:Z

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->d:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->d:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->d:Landroid/graphics/Bitmap;

    :cond_2
    invoke-virtual {p0}, Lcom/iLoong/launcher/widget/WidgetHostView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/iLoong/launcher/widget/WidgetHostView;->getHeight()I

    move-result v4

    if-lez v3, :cond_3

    if-gtz v4, :cond_4

    :cond_3
    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_4
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->d:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->d:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5

    const-string v0, "LauncherAppWidgetHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fail cache!"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->i:Lcom/iLoong/launcher/widget/c;

    invoke-virtual {v4}, Lcom/iLoong/launcher/widget/c;->a()Lcom/iLoong/launcher/a/c;

    move-result-object v4

    iget v4, v4, Lcom/iLoong/launcher/a/c;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v1, "LauncherAppWidgetHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sucess cache!"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->i:Lcom/iLoong/launcher/widget/c;

    invoke-virtual {v4}, Lcom/iLoong/launcher/widget/c;->a()Lcom/iLoong/launcher/a/c;

    move-result-object v4

    iget v4, v4, Lcom/iLoong/launcher/a/c;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->d:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->h:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->j:Z

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/widget/WidgetHostView;->dispatchDraw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->j:Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public cancelLongPress()V
    .locals 1

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->e:Z

    iget-object v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->f:Lcom/iLoong/launcher/widget/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->f:Lcom/iLoong/launcher/widget/b;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/widget/WidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v1, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->j:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->dispatchDraw(Landroid/graphics/Canvas;)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->b:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->c:I

    :goto_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    if-eqz v0, :cond_0

    const-string v0, "launcher"

    const-string v2, "widget request render"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    iget-wide v2, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->b:J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->e:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->e:Z

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/iLoong/launcher/widget/WidgetHostView;->c()V

    goto :goto_0

    :pswitch_2
    iput-boolean v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->e:Z

    iget-object v1, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->f:Lcom/iLoong/launcher/widget/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->f:Lcom/iLoong/launcher/widget/b;

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/widget/WidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setWidget(Lcom/iLoong/launcher/widget/c;)V
    .locals 1

    iput-object p1, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->i:Lcom/iLoong/launcher/widget/c;

    iget-object v0, p0, Lcom/iLoong/launcher/widget/WidgetHostView;->i:Lcom/iLoong/launcher/widget/c;

    iput-object p0, v0, Lcom/iLoong/launcher/widget/c;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method
