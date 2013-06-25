.class Lcom/sec/android/app/twlauncher/TopFourZone$3;
.super Ljava/lang/Object;
.source "TopFourZone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/TopFourZone;->removeItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/TopFourZone;

.field final synthetic val$count:I

.field final synthetic val$packageNames:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/TopFourZone;ILjava/util/HashSet;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 781
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/TopFourZone$3;->this$0:Lcom/sec/android/app/twlauncher/TopFourZone;

    iput p2, p0, Lcom/sec/android/app/twlauncher/TopFourZone$3;->val$count:I

    iput-object p3, p0, Lcom/sec/android/app/twlauncher/TopFourZone$3;->val$packageNames:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .prologue
    .line 783
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/TopFourZone$3;->val$count:I

    move v14, v0

    if-ge v4, v14, :cond_3

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/TopFourZone$3;->this$0:Lcom/sec/android/app/twlauncher/TopFourZone;

    move-object v14, v0

    invoke-virtual {v14, v4}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 785
    .local v13, view:Landroid/view/View;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .local v3, childrenToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 788
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .line 789
    .local v12, tag:Ljava/lang/Object;
    if-eqz v12, :cond_1

    .line 790
    instance-of v14, v12, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v14, :cond_1

    .line 791
    move-object v0, v12

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v7, v0

    .line 792
    .local v7, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    iget-object v8, v7, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 793
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 795
    .local v10, name:Landroid/content/ComponentName;
    const-string v14, "android.intent.action.MAIN"

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    if-eqz v10, :cond_1

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/TopFourZone$3;->val$packageNames:Ljava/util/HashSet;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 797
    .local v11, packageName:Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/TopFourZone$3;->this$0:Lcom/sec/android/app/twlauncher/TopFourZone;

    move-object v14, v0

    #getter for: Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v14}, Lcom/sec/android/app/twlauncher/TopFourZone;->access$000(Lcom/sec/android/app/twlauncher/TopFourZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v14

    invoke-static {v14, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 800
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 807
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #name:Landroid/content/ComponentName;
    .end local v11           #packageName:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 808
    .local v2, childCount:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_2
    if-ge v9, v2, :cond_2

    .line 809
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 810
    .local v1, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/TopFourZone$3;->this$0:Lcom/sec/android/app/twlauncher/TopFourZone;

    move-object v14, v0

    invoke-virtual {v14, v1}, Lcom/sec/android/app/twlauncher/TopFourZone;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 811
    .local v6, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/TopFourZone$3;->this$0:Lcom/sec/android/app/twlauncher/TopFourZone;

    move-object v14, v0

    invoke-virtual {v14, v6}, Lcom/sec/android/app/twlauncher/TopFourZone;->removeViewAt(I)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/TopFourZone$3;->this$0:Lcom/sec/android/app/twlauncher/TopFourZone;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/TopFourZone$3;->this$0:Lcom/sec/android/app/twlauncher/TopFourZone;

    move-object v15, v0

    #getter for: Lcom/sec/android/app/twlauncher/TopFourZone;->mVirtualView:[Landroid/view/View;
    invoke-static {v15}, Lcom/sec/android/app/twlauncher/TopFourZone;->access$200(Lcom/sec/android/app/twlauncher/TopFourZone;)[Landroid/view/View;

    move-result-object v15

    aget-object v15, v15, v6

    invoke-virtual {v14, v15, v6}, Lcom/sec/android/app/twlauncher/TopFourZone;->addView(Landroid/view/View;I)V

    .line 808
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 783
    .end local v1           #child:Landroid/view/View;
    .end local v6           #index:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 815
    .end local v2           #childCount:I
    .end local v3           #childrenToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9           #j:I
    .end local v12           #tag:Ljava/lang/Object;
    .end local v13           #view:Landroid/view/View;
    :cond_3
    return-void
.end method
