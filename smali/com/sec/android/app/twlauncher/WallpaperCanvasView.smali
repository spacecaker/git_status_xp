.class public Lcom/sec/android/app/twlauncher/WallpaperCanvasView;
.super Landroid/view/View;
.source "WallpaperCanvasView.java"


# instance fields
.field private mCanvasRect:Landroid/graphics/Rect;

.field private mStatusBarHeight:I

.field private mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mCanvasRect:Landroid/graphics/Rect;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mStatusBarHeight:I

    .line 32
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 42
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    if-nez v7, :cond_0

    .line 72
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 48
    .local v2, t1:J
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mCanvasRect:Landroid/graphics/Rect;

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 49
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mCanvasRect:Landroid/graphics/Rect;

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 50
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mCanvasRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->getWidth()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 51
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mCanvasRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->getHeight()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 53
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 55
    .local v0, a:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 56
    .local v1, fullscreenMode:Z
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 57
    .local v6, wlp:Landroid/view/WindowManager$LayoutParams;
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_1

    .line 58
    const/4 v1, 0x1

    .line 63
    :cond_1
    if-nez v1, :cond_2

    .line 64
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mCanvasRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mStatusBarHeight:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 67
    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mCanvasRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1, v8}, Lcom/sec/android/app/twlauncher/Workspace;->drawWallpaperImage(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 72
    .local v4, t2:J
    goto :goto_0
.end method

.method public setWorkspace(Lcom/sec/android/app/twlauncher/Workspace;)V
    .locals 0
    .parameter "w"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 36
    return-void
.end method
