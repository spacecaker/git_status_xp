.class public Lcom/sec/android/app/camera/MenuTabController;
.super Ljava/lang/Object;
.source "MenuTabController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MenuTabController$OnMenuTabChangedListener;,
        Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;
    }
.end annotation


# instance fields
.field protected mOnMenuTabChangedListener:Lcom/sec/android/app/camera/MenuTabController$OnMenuTabChangedListener;

.field private mTabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuTabController;->mOnMenuTabChangedListener:Lcom/sec/android/app/camera/MenuTabController$OnMenuTabChangedListener;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuTabController;->mTabList:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method public addTab(Lcom/sec/android/app/camera/widget/TwSelectButton;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "button"
    .parameter "tab"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuTabController;->mTabList:Ljava/util/List;

    new-instance v1, Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;-><init>(Lcom/sec/android/app/camera/MenuTabController;Lcom/sec/android/app/camera/widget/TwSelectButton;Landroid/view/ViewGroup;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 62
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    .line 66
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuTabController;->mTabList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 68
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;

    .line 70
    .local v0, item:Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;
    iget-object v2, v0, Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;->mButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 71
    iget-object v2, v0, Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;->mTab:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 72
    iget-object v2, v0, Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;->mButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setSelected(Z)V

    .line 73
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuTabController;->mOnMenuTabChangedListener:Lcom/sec/android/app/camera/MenuTabController$OnMenuTabChangedListener;

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuTabController;->mOnMenuTabChangedListener:Lcom/sec/android/app/camera/MenuTabController$OnMenuTabChangedListener;

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;->mTab:Landroid/view/ViewGroup;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/MenuTabController$OnMenuTabChangedListener;->OnMenuTabChanged(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v2, v0, Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;->mTab:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 78
    iget-object v2, v0, Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;->mButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setSelected(Z)V

    goto :goto_0

    .line 81
    .end local v0           #item:Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;
    :cond_2
    return-void
.end method

.method public setOnMenuTablChangedListener(Lcom/sec/android/app/camera/MenuTabController$OnMenuTabChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuTabController;->mOnMenuTabChangedListener:Lcom/sec/android/app/camera/MenuTabController$OnMenuTabChangedListener;

    .line 56
    return-void
.end method

.method public setTabVisible(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuTabController;->mTabList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;

    .line 85
    .local v0, selectedMenuTab:Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;
    iget-object v1, v0, Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;->mTab:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 86
    iget-object v1, v0, Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;->mButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setSelected(Z)V

    .line 87
    return-void
.end method
