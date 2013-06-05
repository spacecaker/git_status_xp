.class Lcom/lidroid/systemui/quickpanel/RebootButton$2;
.super Ljava/lang/Object;
.source "RebootButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/systemui/quickpanel/RebootButton;->reboot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/RebootButton;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lidroid/systemui/quickpanel/RebootButton;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/RebootButton$2;->this$0:Lcom/lidroid/systemui/quickpanel/RebootButton;

    iput-object p2, p0, Lcom/lidroid/systemui/quickpanel/RebootButton$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private rebootRecovery(Ljava/lang/String;)V
    .locals 2
    .parameter "stringParam"

    .prologue
    .line 92
    const-string v1, "recovery"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery/boot"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, bootFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0           #bootFile:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 42
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/RebootButton$2;->val$context:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 43
    .local v0, pm:Landroid/os/PowerManager;
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/RebootButton$2;->this$0:Lcom/lidroid/systemui/quickpanel/RebootButton;

    #getter for: Lcom/lidroid/systemui/quickpanel/RebootButton;->action:Ljava/lang/String;
    invoke-static {v1}, Lcom/lidroid/systemui/quickpanel/RebootButton;->access$000(Lcom/lidroid/systemui/quickpanel/RebootButton;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lidroid/systemui/quickpanel/RebootButton$2;->rebootRecovery(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 44
    return-void
.end method
