.class public Lcom/ghareeb/BatteryMod/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghareeb/BatteryMod/BatteryController$BatteryStateChangeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.BatteryController"


# instance fields
.field public Receiver:Landroid/content/Intent;

.field public anim:I

.field clicks:I

.field ctx:Landroid/content/Context;

.field lastClick:J

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ghareeb/BatteryMod/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field res:Landroid/content/res/Resources;

.field public val:Ljava/lang/String;

.field public vis:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ghareeb/BatteryMod/BatteryController;->mIconViews:Ljava/util/ArrayList;

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ghareeb/BatteryMod/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ghareeb/BatteryMod/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 34
    const/4 v2, -0x1

    iput v2, p0, Lcom/ghareeb/BatteryMod/BatteryController;->anim:I

    .line 35
    const/16 v2, 0x8

    iput v2, p0, Lcom/ghareeb/BatteryMod/BatteryController;->vis:I

    .line 36
    const-string v2, "Default"

    iput-object v2, p0, Lcom/ghareeb/BatteryMod/BatteryController;->val:Ljava/lang/String;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ghareeb/BatteryMod/BatteryController;->lastClick:J

    .line 41
    iput-object p1, p0, Lcom/ghareeb/BatteryMod/BatteryController;->mContext:Landroid/content/Context;

    .line 42
    new-instance v2, Lcom/ghareeb/BatteryMod/DataController;

    invoke-direct {v2, p1, p0}, Lcom/ghareeb/BatteryMod/DataController;-><init>(Landroid/content/Context;Lcom/ghareeb/BatteryMod/BatteryController;)V

    .line 43
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 44
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/ghareeb/BatteryMod/BatteryController;->Receiver:Landroid/content/Intent;

    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/ghareeb/BatteryMod/BatteryController;->mContext:Landroid/content/Context;

    const-string v3, "com.ghareeb.battery"

    .line 48
    const/4 v4, 0x3

    .line 47
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/ghareeb/BatteryMod/BatteryController;->ctx:Landroid/content/Context;

    .line 50
    iget-object v2, p0, Lcom/ghareeb/BatteryMod/BatteryController;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/ghareeb/BatteryMod/BatteryController;->res:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "OGMod"

    const-string v3, "com.ghareeb.battery not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private CheckValue(I)I
    .locals 3
    .parameter "value"

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, id:I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stat_sys_battery_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ghareeb/BatteryMod/BatteryController;->val:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ghareeb/BatteryMod/BatteryController;->getImgID(Ljava/lang/String;)I

    move-result v0

    .line 169
    if-nez v0, :cond_1

    .line 170
    add-int/lit8 p1, p1, 0x1

    .line 172
    :cond_1
    if-nez v0, :cond_2

    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    .line 173
    :cond_2
    return p1
.end method

.method static synthetic access$0(Lcom/ghareeb/BatteryMod/BatteryController;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ghareeb/BatteryMod/BatteryController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setChargeImage(Landroid/widget/ImageView;I)V
    .locals 12
    .parameter "view"
    .parameter "value"

    .prologue
    const/16 v11, 0x3e8

    const/4 v10, 0x0

    .line 182
    iget v7, p0, Lcom/ghareeb/BatteryMod/BatteryController;->anim:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 183
    iget-object v7, p0, Lcom/ghareeb/BatteryMod/BatteryController;->res:Landroid/content/res/Resources;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "stat_sys_battery_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/ghareeb/BatteryMod/BatteryController;->val:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 184
    const-string v9, "_charge_anim"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 183
    invoke-virtual {p0, v8}, Lcom/ghareeb/BatteryMod/BatteryController;->getImgID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 185
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget v7, p0, Lcom/ghareeb/BatteryMod/BatteryController;->anim:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 187
    invoke-direct {p0, p2}, Lcom/ghareeb/BatteryMod/BatteryController;->CheckValue(I)I

    move-result p2

    .line 188
    iget-object v7, p0, Lcom/ghareeb/BatteryMod/BatteryController;->res:Landroid/content/res/Resources;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "stat_sys_battery_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/ghareeb/BatteryMod/BatteryController;->val:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 189
    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 188
    invoke-virtual {p0, v8}, Lcom/ghareeb/BatteryMod/BatteryController;->getImgID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 190
    .local v2, d1:Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 191
    .local v0, Animation:Landroid/graphics/drawable/AnimationDrawable;
    const/16 v7, 0x7d0

    invoke-virtual {v0, v2, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 192
    const/16 v4, 0x28

    .line 193
    .local v4, duration:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    const/16 v7, 0x64

    if-le v6, v7, :cond_2

    .line 202
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0           #Animation:Landroid/graphics/drawable/AnimationDrawable;
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 204
    .restart local v0       #Animation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 205
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 195
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/ghareeb/BatteryMod/BatteryController;->res:Landroid/content/res/Resources;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "stat_sys_battery_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    iget-object v9, p0, Lcom/ghareeb/BatteryMod/BatteryController;->val:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_charge_anim"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 195
    invoke-virtual {p0, v8}, Lcom/ghareeb/BatteryMod/BatteryController;->getImgID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 197
    .local v3, d2:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v3           #d2:Landroid/graphics/drawable/Drawable;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 198
    :catch_0
    move-exception v5

    .line 199
    .local v5, e:Ljava/lang/Exception;
    const/16 v4, 0x50

    goto :goto_2

    .line 206
    .end local v0           #Animation:Landroid/graphics/drawable/AnimationDrawable;
    .end local v2           #d1:Landroid/graphics/drawable/Drawable;
    .end local v4           #duration:I
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #i:I
    :cond_3
    iget v7, p0, Lcom/ghareeb/BatteryMod/BatteryController;->anim:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 207
    iget-object v7, p0, Lcom/ghareeb/BatteryMod/BatteryController;->res:Landroid/content/res/Resources;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "stat_sys_battery_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/ghareeb/BatteryMod/BatteryController;->val:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 208
    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 207
    invoke-virtual {p0, v8}, Lcom/ghareeb/BatteryMod/BatteryController;->getImgID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 209
    .restart local v2       #d1:Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/ghareeb/BatteryMod/BatteryController;->res:Landroid/content/res/Resources;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "stat_sys_battery_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/ghareeb/BatteryMod/BatteryController;->val:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 210
    const-string v9, "_charge_anim"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 209
    invoke-virtual {p0, v8}, Lcom/ghareeb/BatteryMod/BatteryController;->getImgID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 211
    .restart local v3       #d2:Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 212
    .restart local v0       #Animation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0, v2, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 213
    invoke-virtual {v0, v3, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 214
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0           #Animation:Landroid/graphics/drawable/AnimationDrawable;
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 216
    .restart local v0       #Animation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 217
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_0
.end method

.method private setImage(Landroid/widget/ImageView;I)V
    .locals 4
    .parameter "view"
    .parameter "value"

    .prologue
    .line 176
    invoke-direct {p0, p2}, Lcom/ghareeb/BatteryMod/BatteryController;->CheckValue(I)I

    move-result p2

    .line 177
    iget-object v1, p0, Lcom/ghareeb/BatteryMod/BatteryController;->res:Landroid/content/res/Resources;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stat_sys_battery_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ghareeb/BatteryMod/BatteryController;->val:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 178
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-virtual {p0, v2}, Lcom/ghareeb/BatteryMod/BatteryController;->getImgID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 179
    .local v0, d1:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    return-void
.end method


# virtual methods
.method public DoWork(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, action:Ljava/lang/String;
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 116
    const-string v9, "level"

    const/4 v10, 0x0

    .line 115
    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 118
    .local v6, level:I
    const-string v9, "plugged"

    const/4 v10, 0x0

    .line 117
    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1

    const/4 v7, 0x1

    .line 119
    .local v7, plugged:Z
    :goto_0
    if-eqz v7, :cond_2

    const/4 v5, 0x1

    .line 120
    .local v5, icon:I
    :goto_1
    iget-object v9, p0, Lcom/ghareeb/BatteryMod/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 121
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-lt v4, v0, :cond_3

    .line 135
    iget-object v9, p0, Lcom/ghareeb/BatteryMod/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 136
    const/4 v4, 0x0

    :goto_3
    if-lt v4, v0, :cond_6

    .line 145
    iget-object v9, p0, Lcom/ghareeb/BatteryMod/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_7

    .line 163
    .end local v0           #N:I
    .end local v1           #action:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #icon:I
    .end local v6           #level:I
    .end local v7           #plugged:Z
    :cond_0
    return-void

    .line 117
    .restart local v1       #action:Ljava/lang/String;
    .restart local v6       #level:I
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 119
    .restart local v7       #plugged:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 122
    .restart local v0       #N:I
    .restart local v4       #i:I
    .restart local v5       #icon:I
    :cond_3
    iget-object v9, p0, Lcom/ghareeb/BatteryMod/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 123
    .local v8, v:Landroid/widget/ImageView;
    if-nez v5, :cond_4

    .line 124
    invoke-direct {p0, v8, v6}, Lcom/ghareeb/BatteryMod/BatteryController;->setImage(Landroid/widget/ImageView;I)V

    .line 131
    :goto_5
    iget-object v9, p0, Lcom/ghareeb/BatteryMod/BatteryController;->mContext:Landroid/content/Context;

    .line 132
    const-string v10, "accessibility_battery_level"

    const-string v11, "string"

    invoke-virtual {p0, v10, v11}, Lcom/ghareeb/BatteryMod/BatteryController;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 133
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 131
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 125
    :cond_4
    const/4 v9, 0x1

    if-ne v5, v9, :cond_5

    .line 126
    invoke-direct {p0, v8, v6}, Lcom/ghareeb/BatteryMod/BatteryController;->setChargeImage(Landroid/widget/ImageView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 150
    .end local v0           #N:I
    .end local v1           #action:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #icon:I
    .end local v6           #level:I
    .end local v7           #plugged:Z
    .end local v8           #v:Landroid/widget/ImageView;
    :catch_0
    move-exception v3

    .line 151
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "OGMod"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DoWork Error- "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/ghareeb/BatteryMod/BatteryController;->val:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/ghareeb/BatteryMod/BatteryController;->anim:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/ghareeb/BatteryMod/BatteryController;->vis:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 152
    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 151
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_6
    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    array-length v9, v9

    if-ge v4, v9, :cond_0

    .line 155
    const-string v9, "OGMod"

    .line 156
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DoWork Error1 - "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 155
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v9, "OGMod"

    .line 158
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DoWork Error2 - "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 158
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 157
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 128
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #N:I
    .restart local v1       #action:Ljava/lang/String;
    .restart local v5       #icon:I
    .restart local v6       #level:I
    .restart local v7       #plugged:Z
    .restart local v8       #v:Landroid/widget/ImageView;
    :cond_5
    :try_start_1
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_5

    .line 137
    .end local v8           #v:Landroid/widget/ImageView;
    :cond_6
    iget-object v9, p0, Lcom/ghareeb/BatteryMod/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 138
    .local v8, v:Landroid/widget/TextView;
    iget v9, p0, Lcom/ghareeb/BatteryMod/BatteryController;->vis:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v9, p0, Lcom/ghareeb/BatteryMod/BatteryController;->mContext:Landroid/content/Context;

    .line 141
    const-string v10, "status_bar_settings_battery_meter_format"

    .line 142
    const-string v11, "string"

    .line 140
    invoke-virtual {p0, v10, v11}, Lcom/ghareeb/BatteryMod/BatteryController;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 142
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 139
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 145
    .end local v8           #v:Landroid/widget/TextView;
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ghareeb/BatteryMod/BatteryController$BatteryStateChangeCallback;

    .line 146
    .local v2, cb:Lcom/ghareeb/BatteryMod/BatteryController$BatteryStateChangeCallback;
    invoke-interface {v2, v6, v7}, Lcom/ghareeb/BatteryMod/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ghareeb/BatteryMod/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/ghareeb/BatteryMod/BatteryController;->Receiver:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ghareeb/BatteryMod/BatteryController;->DoWork(Landroid/content/Intent;)V

    .line 74
    new-instance v0, Lcom/ghareeb/BatteryMod/BatteryController$1;

    invoke-direct {v0, p0}, Lcom/ghareeb/BatteryMod/BatteryController$1;-><init>(Lcom/ghareeb/BatteryMod/BatteryController;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method public addLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ghareeb/BatteryMod/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/ghareeb/BatteryMod/BatteryController;->Receiver:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ghareeb/BatteryMod/BatteryController;->DoWork(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method public addStateChangedCallback(Lcom/ghareeb/BatteryMod/BatteryController$BatteryStateChangeCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ghareeb/BatteryMod/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public getImgID(Ljava/lang/String;)I
    .locals 3
    .parameter "name"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ghareeb/BatteryMod/BatteryController;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    .line 65
    iget-object v2, p0, Lcom/ghareeb/BatteryMod/BatteryController;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getResID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "name"
    .parameter "Type"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ghareeb/BatteryMod/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/ghareeb/BatteryMod/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 106
    iput-object p2, p0, Lcom/ghareeb/BatteryMod/BatteryController;->Receiver:Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, p2}, Lcom/ghareeb/BatteryMod/BatteryController;->DoWork(Landroid/content/Intent;)V

    .line 108
    return-void
.end method
