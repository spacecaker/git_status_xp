.class Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateShortcut"
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/twlauncher/AddAdapter;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 3714
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3714
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 3748
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3752
    :goto_0
    return-void

    .line 3749
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 3721
    new-instance v2, Lcom/sec/android/app/twlauncher/AddAdapter;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {v2, v3}, Lcom/sec/android/app/twlauncher/AddAdapter;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->mAdapter:Lcom/sec/android/app/twlauncher/AddAdapter;

    .line 3723
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3724
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v3, 0x7f0a0011

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3725
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->mAdapter:Lcom/sec/android/app/twlauncher/AddAdapter;

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3727
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 3729
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 3730
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 3731
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3732
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 3734
    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 3738
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$1402(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    .line 3739
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->cleanup()V

    .line 3740
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 26
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 3759
    .local v17, res:Landroid/content/res/Resources;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->cleanup()V

    .line 3761
    packed-switch p2, :pswitch_data_0

    .line 3843
    :goto_0
    return-void

    .line 3764
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v23, v0

    const/16 v24, 0x7

    const v25, 0x7f0a0022

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->pickShortcut(II)V
    invoke-static/range {v23 .. v25}, Lcom/sec/android/app/twlauncher/Launcher;->access$2000(Lcom/sec/android/app/twlauncher/Launcher;II)V

    goto :goto_0

    .line 3769
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/twlauncher/Launcher;->access$2100(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    .line 3771
    .local v3, appWidgetId:I
    new-instance v16, Landroid/content/Intent;

    const-string v23, "android.appwidget.action.APPWIDGET_PICK"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3772
    .local v16, pickIntent:Landroid/content/Intent;
    const-string v23, "appWidgetId"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3775
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 3776
    .local v14, intent:Landroid/content/Intent;
    const-string v23, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3777
    const-string v23, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object v1, v14

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 3779
    .local v4, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Landroid/content/pm/ResolveInfo;

    move-object/from16 v23, v0

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/pm/ResolveInfo;

    .line 3780
    .local v5, appsArray:[Landroid/content/pm/ResolveInfo;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 3782
    .local v19, samsungWidgetInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3783
    .local v9, customExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/twlauncher/Launcher;->access$2200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 3784
    .local v22, swi:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    const/4 v12, 0x0

    .line 3785
    .local v12, icon:I
    move-object v6, v5

    .local v6, arr$:[Landroid/content/pm/ResolveInfo;
    array-length v15, v6

    .local v15, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_2
    if-ge v11, v15, :cond_0

    aget-object v18, v6, v11

    .line 3786
    .local v18, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 3788
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v12

    .line 3793
    .end local v18           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    new-instance v13, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v13}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 3794
    .local v13, info:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v13

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 3795
    iput v12, v13, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 3796
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object v1, v13

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 3797
    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3799
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3800
    .local v7, b:Landroid/os/Bundle;
    const-string v23, "custom_widget"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object v0, v7

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3801
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3785
    .end local v7           #b:Landroid/os/Bundle;
    .end local v13           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v18       #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 3803
    .end local v6           #arr$:[Landroid/content/pm/ResolveInfo;
    .end local v11           #i$:I
    .end local v12           #icon:I
    .end local v15           #len$:I
    .end local v18           #ri:Landroid/content/pm/ResolveInfo;
    .end local v22           #swi:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_2
    const-string v23, "customInfo"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3805
    const-string v23, "customExtras"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v23, v0

    const/16 v24, 0x9

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3815
    .end local v3           #appWidgetId:I
    .end local v4           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #appsArray:[Landroid/content/pm/ResolveInfo;
    .end local v9           #customExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v14           #intent:Landroid/content/Intent;
    .end local v16           #pickIntent:Landroid/content/Intent;
    .end local v19           #samsungWidgetInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :pswitch_2
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 3817
    .local v8, bundle:Landroid/os/Bundle;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 3818
    .local v21, shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v23, 0x7f0a0016

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3819
    const-string v23, "android.intent.extra.shortcut.NAME"

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3821
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 3823
    .local v20, shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v23, v0

    const v24, 0x7f02006e

    invoke-static/range {v23 .. v24}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3825
    const-string v23, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3827
    new-instance v16, Landroid/content/Intent;

    const-string v23, "android.intent.action.PICK_ACTIVITY"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3828
    .restart local v16       #pickIntent:Landroid/content/Intent;
    const-string v23, "android.intent.extra.INTENT"

    new-instance v24, Landroid/content/Intent;

    const-string v25, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3830
    const-string v23, "android.intent.extra.TITLE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v24, v0

    const v25, 0x7f0a0023

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/twlauncher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 3832
    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3839
    .end local v8           #bundle:Landroid/os/Bundle;
    .end local v16           #pickIntent:Landroid/content/Intent;
    .end local v20           #shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    .end local v21           #shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v23, v0

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->startWallpaper()V
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/twlauncher/Launcher;->access$2300(Lcom/sec/android/app/twlauncher/Launcher;)V

    goto/16 :goto_0

    .line 3761
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 3743
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$1402(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    .line 3744
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 3846
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$1402(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    .line 3847
    return-void
.end method
