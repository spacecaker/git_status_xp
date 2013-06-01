.class public Lcom/iLoong/launcher/theme/ThemesGridLayout;
.super Lcom/iLoong/launcher/SetupMenu/PagedView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/SetupMenu/PagedView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 0

    invoke-super {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->computeScroll()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/iLoong/launcher/SetupMenu/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/iLoong/launcher/SetupMenu/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
