.class Lcom/sec/android/app/twlauncher/MenuManager$3;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;

.field final synthetic val$listadapter:Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1741
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$3;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/MenuManager$3;->val$listadapter:Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 1745
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$3;->val$listadapter:Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1746
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$3;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$400(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/DragController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$3;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v3, 0x2

    invoke-interface {v1, p2, v2, v0, v3}, Lcom/sec/android/app/twlauncher/DragController;->startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 1747
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$3;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$300(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->closeAllApplications()V

    .line 1748
    const/4 v1, 0x1

    return v1
.end method
