.class Lcom/sec/android/app/twlauncher/MenuManager$6;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$6;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1913
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v7

    .line 1944
    :goto_0
    return v5

    .line 1917
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager$6;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/MenuManager;->access$800(Lcom/sec/android/app/twlauncher/MenuManager;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    .line 1918
    goto :goto_0

    .line 1921
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 1922
    .local v4, tag:Ljava/lang/Object;
    if-eqz v4, :cond_3

    instance-of v5, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v5, :cond_3

    .line 1923
    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 1924
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager$6;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/MenuManager;->access$600(Lcom/sec/android/app/twlauncher/MenuManager;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 1925
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager$6;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$6;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1926
    .local v3, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1927
    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v5, p1, :cond_4

    .line 1928
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager$6;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iput-object p1, v5, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1929
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager$6;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iput v2, v5, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    .line 1933
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager$6;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/MenuManager;->access$400(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/DragController;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$6;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-interface {v5, p1, v6, v1, v7}, Lcom/sec/android/app/twlauncher/DragController;->startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .end local v1           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #i:I
    .end local v3           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_3
    :goto_2
    move v5, v8

    .line 1944
    goto :goto_0

    .line 1926
    .restart local v1       #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v2       #i:I
    .restart local v3       #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1935
    .end local v2           #i:I
    .end local v3           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager$6;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/MenuManager;->access$300(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->closeAllApplications()V

    .line 1937
    sget-boolean v5, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v5, :cond_6

    .line 1938
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager$6;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/MenuManager;->access$300(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 1940
    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager$6;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/MenuManager;->access$400(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/DragController;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$6;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-interface {v5, p1, v6, v1, v8}, Lcom/sec/android/app/twlauncher/DragController;->startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    goto :goto_2
.end method
