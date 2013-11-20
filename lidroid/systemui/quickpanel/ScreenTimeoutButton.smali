.class public Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "ScreenTimeoutButton.java"


# static fields
.field private static final CM_MODE_15_30_60_120_600_1800:I = 0x0

.field private static final OBSERVED_URIS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCREEN_TIMEOUT_HIGH:I = 0x927c0

.field private static final SCREEN_TIMEOUT_LONG:I = 0x1d4c0

.field private static final SCREEN_TIMEOUT_LOW:I = 0x7530

.field private static final SCREEN_TIMEOUT_MAX:I = 0x1b7740

.field private static final SCREEN_TIMEOUT_MIN:I = 0x3a98

.field private static final SCREEN_TIMEOUT_NORMAL:I = 0xea60

.field private static TOAST:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->OBSERVED_URIS:Ljava/util/List;

    .line 32
    sget-object v0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleScreenTimeout"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getCurrentCMMode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_screentimeout_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getScreenTimeout(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static timeoutToString(I)Ljava/lang/String;
    .locals 8
    .parameter "timeout"

    .prologue
    const/4 v6, 0x0

    const-string v7, " "

    .line 112
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "Second(s)"

    aput-object v4, v2, v6

    const/4 v4, 0x1

    const-string v5, "Minute(s)"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "Hour"

    aput-object v5, v2, v4

    .line 119
    .local v2, tags:[Ljava/lang/String;
    div-int/lit16 v3, p0, 0x3e8

    .line 120
    .local v3, tmp:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, sTimeout:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    const/16 v4, 0x3c

    if-lt v3, v4, :cond_0

    .line 123
    mul-int/lit8 v4, v0, 0x3c

    div-int/2addr v3, v4

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    sget-object v0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 147
    const v0, 0x7f0900f7

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 7

    .prologue
    .line 55
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->getScreenTimeout(Landroid/content/Context;)I

    move-result v2

    .line 57
    .local v2, screentimeout:I
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->getCurrentCMMode(Landroid/content/Context;)I

    move-result v1

    .line 59
    .local v1, currentMode:I
    const/16 v3, 0x3a98

    if-ge v2, v3, :cond_1

    .line 60
    const/16 v2, 0x3a98

    .line 73
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    sget-object v3, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    if-nez v3, :cond_0

    .line 79
    const-string v3, ""

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    sput-object v3, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    .line 83
    :cond_0
    sget-object v3, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 86
    sget-object v3, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen timeout has switched to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->timeoutToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 87
    sget-object v3, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    const/16 v4, 0x11

    sget-object v5, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getXOffset()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sget-object v6, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->getYOffset()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 88
    sget-object v3, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->TOAST:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 89
    return-void

    .line 61
    :cond_1
    const/16 v3, 0x7530

    if-ge v2, v3, :cond_2

    .line 62
    const/16 v2, 0x7530

    goto :goto_0

    .line 63
    :cond_2
    const v3, 0xea60

    if-ge v2, v3, :cond_3

    .line 64
    const v2, 0xea60

    goto :goto_0

    .line 65
    :cond_3
    const v3, 0x1d4c0

    if-ge v2, v3, :cond_4

    .line 66
    const v2, 0x1d4c0

    goto :goto_0

    .line 67
    :cond_4
    const v3, 0x927c0

    if-ge v2, v3, :cond_5

    .line 68
    const v2, 0x927c0

    goto :goto_0

    .line 69
    :cond_5
    const v3, 0x1b7740

    if-ge v2, v3, :cond_6

    .line 70
    const v2, 0x1b7740

    goto :goto_0

    .line 71
    :cond_6
    if-nez v1, :cond_7

    .line 72
    const/16 v2, 0x3a98

    goto/16 :goto_0

    .line 74
    :cond_7
    const/16 v2, 0x3a98

    goto/16 :goto_0
.end method

.method protected updateState()V
    .locals 3

    .line 39
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->getScreenTimeout(Landroid/content/Context;)I

    move-result v0

    .line 41
    .line 42
    .local v0, timeout:I
    const v1, 0x3a98

    if-gt v0, v1, :cond_0

    const v2, 0x7f020156

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mIcon:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mState:I

    .line 43
    :goto_0
    return-void

    .line 44
    :cond_0
    const v1, 0x7530

    if-gt v0, v1, :cond_1

    const v2, 0x7f020159

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mIcon:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mState:I

    goto :goto_0

    .line 46
    :cond_1
    const v1, 0xea60

    if-gt v0, v1, :cond_2

    const v2, 0x7f020157

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mIcon:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mState:I

    goto :goto_0

    .line 48
    :cond_2
    const v1, 0x1d4c0

    if-gt v0, v1, :cond_3

    const v2, 0x7f020158

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mIcon:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mState:I

    goto :goto_0

    .line 50
    :cond_3
    const v1, 0x927c0

    if-gt v0, v1, :cond_4

    const v2, 0x7f020155

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mIcon:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mState:I

    goto :goto_0

    .line 52
    :cond_4
    const v1, 0x1b7740

    if-gt v0, v1, :cond_5

    const v2, 0x7f02016a

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mIcon:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mState:I

    goto :goto_0

    :cond_5
    const v2, 0x7f02015a

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mIcon:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;->mState:I

    goto :goto_0
.end method
