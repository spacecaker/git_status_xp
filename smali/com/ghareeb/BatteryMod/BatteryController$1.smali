.class Lcom/ghareeb/BatteryMod/BatteryController$1;
.super Ljava/lang/Object;
.source "BatteryController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghareeb/BatteryMod/BatteryController;->addIconView(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghareeb/BatteryMod/BatteryController;


# direct methods
.method constructor <init>(Lcom/ghareeb/BatteryMod/BatteryController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ghareeb/BatteryMod/BatteryController$1;->this$0:Lcom/ghareeb/BatteryMod/BatteryController;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 76
    iget-object v1, p0, Lcom/ghareeb/BatteryMod/BatteryController$1;->this$0:Lcom/ghareeb/BatteryMod/BatteryController;

    iget-wide v1, v1, Lcom/ghareeb/BatteryMod/BatteryController;->lastClick:J

    const-wide/16 v3, 0xbb8

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/ghareeb/BatteryMod/BatteryController$1;->this$0:Lcom/ghareeb/BatteryMod/BatteryController;

    iget v2, v1, Lcom/ghareeb/BatteryMod/BatteryController;->clicks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/ghareeb/BatteryMod/BatteryController;->clicks:I

    .line 78
    iget-object v1, p0, Lcom/ghareeb/BatteryMod/BatteryController$1;->this$0:Lcom/ghareeb/BatteryMod/BatteryController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ghareeb/BatteryMod/BatteryController;->lastClick:J

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/ghareeb/BatteryMod/BatteryController$1;->this$0:Lcom/ghareeb/BatteryMod/BatteryController;

    iget v1, v1, Lcom/ghareeb/BatteryMod/BatteryController;->clicks:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 84
    iget-object v1, p0, Lcom/ghareeb/BatteryMod/BatteryController$1;->this$0:Lcom/ghareeb/BatteryMod/BatteryController;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/ghareeb/BatteryMod/BatteryController;->lastClick:J

    .line 85
    iget-object v1, p0, Lcom/ghareeb/BatteryMod/BatteryController$1;->this$0:Lcom/ghareeb/BatteryMod/BatteryController;

    const/4 v2, 0x0

    iput v2, v1, Lcom/ghareeb/BatteryMod/BatteryController;->clicks:I

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ghareeb.battery.Settings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/ghareeb/BatteryMod/BatteryController$1;->this$0:Lcom/ghareeb/BatteryMod/BatteryController;

    #getter for: Lcom/ghareeb/BatteryMod/BatteryController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ghareeb/BatteryMod/BatteryController;->access$0(Lcom/ghareeb/BatteryMod/BatteryController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    const-string v1, "OGMod"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Battery Clicked , "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ghareeb/BatteryMod/BatteryController$1;->this$0:Lcom/ghareeb/BatteryMod/BatteryController;

    iget v3, v3, Lcom/ghareeb/BatteryMod/BatteryController;->clicks:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 91
    iget-object v3, p0, Lcom/ghareeb/BatteryMod/BatteryController$1;->this$0:Lcom/ghareeb/BatteryMod/BatteryController;

    iget-wide v3, v3, Lcom/ghareeb/BatteryMod/BatteryController;->lastClick:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/ghareeb/BatteryMod/BatteryController$1;->this$0:Lcom/ghareeb/BatteryMod/BatteryController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ghareeb/BatteryMod/BatteryController;->lastClick:J

    .line 81
    iget-object v1, p0, Lcom/ghareeb/BatteryMod/BatteryController$1;->this$0:Lcom/ghareeb/BatteryMod/BatteryController;

    const/4 v2, 0x1

    iput v2, v1, Lcom/ghareeb/BatteryMod/BatteryController;->clicks:I

    goto :goto_0
.end method
