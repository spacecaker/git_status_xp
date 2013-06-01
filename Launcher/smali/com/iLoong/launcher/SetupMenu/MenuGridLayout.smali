.class public Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;
.super Lcom/iLoong/launcher/SetupMenu/PagedView;


# instance fields
.field private a:Lcom/iLoong/launcher/SetupMenu/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/SetupMenu/PagedView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;->a:Lcom/iLoong/launcher/SetupMenu/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;->a:Lcom/iLoong/launcher/SetupMenu/u;

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/u;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->computeScroll()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;->a:Lcom/iLoong/launcher/SetupMenu/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;->a:Lcom/iLoong/launcher/SetupMenu/u;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/SetupMenu/u;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/iLoong/launcher/SetupMenu/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;->a:Lcom/iLoong/launcher/SetupMenu/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;->a:Lcom/iLoong/launcher/SetupMenu/u;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/SetupMenu/u;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/iLoong/launcher/SetupMenu/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setScroller(Lcom/iLoong/launcher/SetupMenu/u;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;->a:Lcom/iLoong/launcher/SetupMenu/u;

    return-void
.end method
