.class public Lcom/sec/android/app/twlauncher/MenuDrawer;
.super Landroid/widget/FrameLayout;
.source "MenuDrawer.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DropTarget;


# instance fields
.field private mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 65
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 29
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 31
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    .line 32
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 34
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuManager;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 36
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setAnimationCacheEnabled(Z)V

    .line 37
    return-void
.end method

.method public setBackgroundClose()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public setBackgroundImage()V
    .locals 1

    .prologue
    .line 93
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundResource(I)V

    .line 96
    return-void
.end method

.method public setEnabledProgress(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
