.class Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
.super Lcom/sec/android/app/twlauncher/ItemInfo;
.source "SamsungAppWidgetInfo.java"


# instance fields
.field intent:Landroid/content/Intent;

.field state:I

.field widgetId:I

.field widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    .line 57
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 58
    return-void
.end method

.method static makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;I)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .locals 1
    .parameter "context"
    .parameter "item"
    .parameter "widgetId"

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;ILcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method static makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;ILcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .locals 10
    .parameter "context"
    .parameter "item"
    .parameter "widgetId"
    .parameter "widgetInfo"

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    if-nez p3, :cond_1

    .line 166
    new-instance p3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .end local p3
    invoke-direct {p3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;-><init>()V

    .line 167
    .end local v1           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .local p3, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    iput p2, p3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    move-object v3, p3

    .line 173
    .end local p3           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .local v3, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :goto_0
    const/4 v2, 0x0

    .line 174
    .local v2, contentView:Landroid/view/View;
    const/4 v5, 0x0

    .line 175
    .local v5, orientation:I
    instance-of p3, p0, Landroid/app/ActivityGroup;

    if-eqz p3, :cond_c

    iget-object p3, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    if-eqz p3, :cond_c

    iget-object p3, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    if-eqz p3, :cond_c

    .line 176
    move-object v0, p0

    check-cast v0, Landroid/app/ActivityGroup;

    move-object p3, v0

    .line 177
    .local p3, group:Landroid/app/ActivityGroup;
    invoke-virtual {p3}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v4

    .line 179
    .local v4, manager:Landroid/app/LocalActivityManager;
    const/4 p3, 0x0

    .line 181
    .local p3, c:Landroid/content/Context;
    :try_start_0
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {p0, v1, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 186
    :goto_1
    if-eqz p3, :cond_0

    instance-of v1, p0, Lcom/sec/android/app/twlauncher/Launcher;

    if-eqz v1, :cond_0

    .line 187
    move-object v0, p0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    move-object v1, v0

    .line 188
    .local v1, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getResOrientation()I

    move-result v5

    .line 190
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .end local v1           #launcher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 192
    .local v1, config:Landroid/content/res/Configuration;
    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v6, v5, :cond_0

    .line 193
    iput v5, v1, Landroid/content/res/Configuration;->orientation:I

    .line 194
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .end local p3           #c:Landroid/content/Context;
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    invoke-virtual {v6, v1, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 198
    .end local v1           #config:Landroid/content/res/Configuration;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v1, intent:Landroid/content/Intent;
    iget-object p3, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, p3, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const/4 v6, 0x0

    .line 202
    .local v6, w:Landroid/view/Window;
    :try_start_1
    move-object v0, p0

    check-cast v0, Landroid/app/ActivityGroup;

    move-object p3, v0

    .line 204
    .local p3, ag:Landroid/app/ActivityGroup;
    invoke-virtual {p3}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object p3

    .end local p3           #ag:Landroid/app/ActivityGroup;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object p3

    .line 205
    .local p3, activity:Landroid/app/Activity;
    const-string v7, "SamsungAppWidgetInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "activity:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  widgetId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-nez p3, :cond_3

    .line 208
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2
    invoke-virtual {v4, p2, v1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object p2

    .end local v6           #w:Landroid/view/Window;
    .local p2, w:Landroid/view/Window;
    move-object v4, p2

    .line 213
    .end local p2           #w:Landroid/view/Window;
    .local v4, w:Landroid/view/Window;
    :goto_2
    :try_start_2
    const-string p2, "SamsungAppWidgetInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[makeSamsungWidget] check window : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v4, :cond_4

    const-string v6, "null"

    :goto_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-eqz v4, :cond_5

    const p2, 0x1020002

    invoke-virtual {v4, p2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v1, p2

    .line 216
    .local v1, mainView:Landroid/view/View;
    :goto_4
    if-eqz v1, :cond_6

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v6, v0

    const/4 p2, 0x0

    invoke-virtual {v6, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object p2

    .line 218
    .end local v2           #contentView:Landroid/view/View;
    .local p2, contentView:Landroid/view/View;
    :goto_5
    if-eqz p2, :cond_7

    .line 219
    :try_start_3
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #mainView:Landroid/view/View;
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local p3           #activity:Landroid/app/Activity;
    :goto_6
    move-object p3, v4

    .line 240
    .end local v4           #w:Landroid/view/Window;
    .local p3, w:Landroid/view/Window;
    :goto_7
    iget-object p3, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    .end local p3           #w:Landroid/view/Window;
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, p3, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->setIntent(Ljava/lang/String;Ljava/lang/String;)V

    move p3, v5

    .line 243
    .end local v5           #orientation:I
    .local p3, orientation:I
    :goto_8
    new-instance v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;-><init>(Landroid/content/Context;)V

    .line 244
    .local v1, widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    .end local p0
    invoke-virtual {p1, p3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getWidth(I)I

    move-result v2

    invoke-virtual {p1, p3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getHeight(I)I

    move-result p1

    .end local p1
    invoke-direct {p0, v2, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 245
    .local p0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 p1, 0x11

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 247
    if-eqz p2, :cond_b

    .line 248
    invoke-virtual {v1, p2, p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    :goto_9
    iput-object v1, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 255
    return-object v3

    .line 169
    .end local v3           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .local v1, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .local p2, widgetId:I
    .local p3, widgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_1
    move-object p3, p3

    .line 170
    .end local v1           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .local p3, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    iget v1, p3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iput p2, p3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    :cond_2
    move-object v3, p3

    .end local p3           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .restart local v3       #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    goto/16 :goto_0

    .line 182
    .restart local v2       #contentView:Landroid/view/View;
    .local v4, manager:Landroid/app/LocalActivityManager;
    .restart local v5       #orientation:I
    .local p3, c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 183
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 210
    .local v1, intent:Landroid/content/Intent;
    .restart local v6       #w:Landroid/view/Window;
    .local p3, activity:Landroid/app/Activity;
    :cond_3
    :try_start_4
    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object p2

    .end local v6           #w:Landroid/view/Window;
    .local p2, w:Landroid/view/Window;
    move-object v4, p2

    .end local p2           #w:Landroid/view/Window;
    .local v4, w:Landroid/view/Window;
    goto :goto_2

    .line 213
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v6

    goto :goto_3

    .line 215
    :cond_5
    const/4 p2, 0x0

    move-object v1, p2

    goto :goto_4

    .line 216
    .local v1, mainView:Landroid/view/View;
    :cond_6
    const/4 p2, 0x0

    goto :goto_5

    .line 221
    .end local v2           #contentView:Landroid/view/View;
    .local p2, contentView:Landroid/view/View;
    :cond_7
    :try_start_6
    const-string v2, "SamsungAppWidgetInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[makeSamsungWidget] mainView : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v2, "SamsungAppWidgetInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[makeSamsungWidget] contentView : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-eqz p3, :cond_a

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 226
    if-eqz v1, :cond_8

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    const/4 p3, 0x0

    invoke-virtual {v2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .end local p3           #activity:Landroid/app/Activity;
    move-result-object p2

    .line 227
    :goto_a
    if-eqz p2, :cond_9

    .line 228
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #mainView:Landroid/view/View;
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_6

    .line 235
    :catch_1
    move-exception p3

    move-object v1, v4

    .line 236
    .end local v4           #w:Landroid/view/Window;
    .local v1, w:Landroid/view/Window;
    .local p3, e:Ljava/lang/Exception;
    :goto_b
    const-string v2, "SamsungAppWidgetInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed startActivity("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    move-object p3, v1

    .end local v1           #w:Landroid/view/Window;
    .local p3, w:Landroid/view/Window;
    goto/16 :goto_7

    .line 226
    .local v1, mainView:Landroid/view/View;
    .restart local v4       #w:Landroid/view/Window;
    .local p3, activity:Landroid/app/Activity;
    :cond_8
    const/4 p2, 0x0

    goto :goto_a

    .line 230
    .end local p3           #activity:Landroid/app/Activity;
    :cond_9
    :try_start_7
    const-string p3, "SamsungAppWidgetInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[makeSamsungWidget] failed get widget view("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #mainView:Landroid/view/View;
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 232
    .restart local v1       #mainView:Landroid/view/View;
    .restart local p3       #activity:Landroid/app/Activity;
    :cond_a
    const-string p3, "SamsungAppWidgetInfo"

    .end local p3           #activity:Landroid/app/Activity;
    const-string v1, "[makeSamsungWidget] activity is still null."

    .end local v1           #mainView:Landroid/view/View;
    invoke-static {p3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_6

    .line 250
    .end local v4           #w:Landroid/view/Window;
    .end local v5           #orientation:I
    .end local p1
    .local v1, widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;
    .local p0, lp:Landroid/widget/FrameLayout$LayoutParams;
    .local p3, orientation:I
    :cond_b
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getErrorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1, p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_9

    .line 235
    .end local p2           #contentView:Landroid/view/View;
    .end local p3           #orientation:I
    .local v1, intent:Landroid/content/Intent;
    .restart local v2       #contentView:Landroid/view/View;
    .local v4, manager:Landroid/app/LocalActivityManager;
    .restart local v5       #orientation:I
    .restart local v6       #w:Landroid/view/Window;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :catch_2
    move-exception p2

    move-object p3, p2

    move-object v1, v6

    .end local v6           #w:Landroid/view/Window;
    .local v1, w:Landroid/view/Window;
    move-object p2, v2

    .end local v2           #contentView:Landroid/view/View;
    .restart local p2       #contentView:Landroid/view/View;
    goto :goto_b

    .end local v1           #w:Landroid/view/Window;
    .end local p2           #contentView:Landroid/view/View;
    .restart local v2       #contentView:Landroid/view/View;
    .local v4, w:Landroid/view/Window;
    .local p3, activity:Landroid/app/Activity;
    :catch_3
    move-exception p2

    move-object p3, p2

    move-object v1, v4

    .end local v4           #w:Landroid/view/Window;
    .restart local v1       #w:Landroid/view/Window;
    move-object p2, v2

    .end local v2           #contentView:Landroid/view/View;
    .restart local p2       #contentView:Landroid/view/View;
    goto :goto_b

    .end local v1           #w:Landroid/view/Window;
    .end local p3           #activity:Landroid/app/Activity;
    .restart local v2       #contentView:Landroid/view/View;
    .local p2, widgetId:I
    :cond_c
    move p3, v5

    .end local v5           #orientation:I
    .local p3, orientation:I
    move-object p2, v2

    .end local v2           #contentView:Landroid/view/View;
    .local p2, contentView:Landroid/view/View;
    goto/16 :goto_8
.end method


# virtual methods
.method public fireOnPause(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 81
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/ActivityGroup;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 83
    check-cast p1, Landroid/app/ActivityGroup;

    .line 84
    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 91
    const/4 v2, 0x0

    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 92
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/android/touchwiz/appwidget/IWidgetObserver;

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    aget-object v3, v1, v2

    .line 91
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    :cond_3
    if-eqz v3, :cond_0

    .line 99
    :try_start_0
    const-string v1, "fireOnPause"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_0

    .line 101
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    .line 102
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 108
    :catch_2
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 110
    :catch_3
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 112
    :catch_4
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public fireOnResume(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 121
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    if-ne v0, v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/ActivityGroup;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 123
    check-cast p1, Landroid/app/ActivityGroup;

    .line 124
    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 131
    const/4 v2, 0x0

    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 132
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/android/touchwiz/appwidget/IWidgetObserver;

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    aget-object v3, v1, v2

    .line 131
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 137
    :cond_3
    if-eqz v3, :cond_0

    .line 139
    :try_start_0
    const-string v1, "fireOnResume"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 140
    if-eqz v1, :cond_0

    .line 141
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 146
    :catch_1
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 148
    :catch_2
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 150
    :catch_3
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 152
    :catch_4
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 69
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 70
    .local v0, uri:Ljava/lang/String;
    :goto_0
    const-string v1, "intent"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    return-void

    .line 69
    .end local v0           #uri:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method final setIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SamsungAppWidgetInfo. widgetId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;->unbind()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 262
    return-void
.end method
