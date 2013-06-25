.class Lcom/sec/android/app/twlauncher/MenuManager$2;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 1730
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$2;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/MenuManager$2;->val$listadapter:Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1734
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$2;->val$listadapter:Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1735
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$2;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$300(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 1736
    return-void
.end method
