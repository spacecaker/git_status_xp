.class Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton$2;
.super Ljava/lang/Object;
.source "USBConnectionModeButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->changeMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton$2;->this$0:Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;

    iput-object p2, p0, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getUSBConnectionMode()Ljava/lang/String;
    .locals 7

    .prologue
    .line 206
    const-string v2, ""

    .line 210
    .local v2, line:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 211
    .local v4, rt:Ljava/lang/Runtime;
    const-string v5, "getprop persist.sys.usb.config"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 212
    .local v3, pr:Ljava/lang/Process;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 214
    .local v1, input:Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 215
    const-string v5, "Property:"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v1           #input:Ljava/io/BufferedReader;
    .end local v3           #pr:Ljava/lang/Process;
    .end local v4           #rt:Ljava/lang/Runtime;
    :goto_0
    return-object v2

    .line 220
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private runShellCommands([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 10
    .parameter "commands"

    .prologue
    const/4 v6, 0x0

    .line 179
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 180
    .local v4, rt:Ljava/lang/Runtime;
    const-string v5, "sh"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 181
    .local v3, pr:Ljava/lang/Process;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 183
    .local v2, os:Ljava/io/DataOutputStream;
    array-length v7, p1

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_0

    .line 189
    const-string v5, "exit\n"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 191
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .end local v2           #os:Ljava/io/DataOutputStream;
    .end local v3           #pr:Ljava/lang/Process;
    .end local v4           #rt:Ljava/lang/Runtime;
    :goto_1
    return-object v5

    .line 183
    .restart local v2       #os:Ljava/io/DataOutputStream;
    .restart local v3       #pr:Ljava/lang/Process;
    .restart local v4       #rt:Ljava/lang/Runtime;
    :cond_0
    :try_start_1
    aget-object v1, p1, v5

    .line 185
    .local v1, localCommands:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 193
    .end local v1           #localCommands:Ljava/lang/String;
    .end local v2           #os:Ljava/io/DataOutputStream;
    .end local v3           #pr:Ljava/lang/Process;
    .end local v4           #rt:Ljava/lang/Runtime;
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/io/IOException;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1

    .line 197
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1
.end method

.method private setUsbConnectionMode(Ljava/lang/String;)V
    .locals 5
    .parameter "usbMode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 291
    const-string v2, "mtp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "setprop persist.sys.usb.config mtp,adb"

    aput-object v2, v0, v3

    .line 294
    .local v0, commandMTP:[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton$2;->runShellCommands([Ljava/lang/String;)Ljava/lang/Boolean;

    .line 302
    .end local v0           #commandMTP:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    const-string v2, "mass_storage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "setprop persist.sys.usb.config mass_storage,adb"

    aput-object v2, v1, v3

    .line 299
    .local v1, commandMassStorage:[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton$2;->runShellCommands([Ljava/lang/String;)Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 41
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton$2;->this$0:Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;

    #getter for: Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->usbMode:Ljava/lang/String;
    invoke-static {v1}, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->access$000(Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton$2;->setUsbConnectionMode(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/lidroid/systemui/quickpanel/PowerButton;->updateAllButtons()V

    .line 44
    return-void
.end method
