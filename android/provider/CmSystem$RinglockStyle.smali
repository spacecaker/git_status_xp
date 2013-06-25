.class public final enum Landroid/provider/CmSystem$RinglockStyle;
.super Ljava/lang/Enum;
.source "CmSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CmSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RinglockStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/provider/CmSystem$RinglockStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$android$provider$CmSystem$RinglockStyle:[I

.field public static final enum Blade:Landroid/provider/CmSystem$RinglockStyle;

.field public static final enum Bubble:Landroid/provider/CmSystem$RinglockStyle;

.field private static final synthetic ENUM$VALUES:[Landroid/provider/CmSystem$RinglockStyle;

.field public static final enum Holo:Landroid/provider/CmSystem$RinglockStyle;

.field public static final enum Revamped:Landroid/provider/CmSystem$RinglockStyle;


# direct methods
.method static synthetic $SWITCH_TABLE$android$provider$CmSystem$RinglockStyle()[I
    .locals 3

    .prologue
    .line 204
    sget-object v0, Landroid/provider/CmSystem$RinglockStyle;->$SWITCH_TABLE$android$provider$CmSystem$RinglockStyle:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/provider/CmSystem$RinglockStyle;->values()[Landroid/provider/CmSystem$RinglockStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/provider/CmSystem$RinglockStyle;->Blade:Landroid/provider/CmSystem$RinglockStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$RinglockStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Landroid/provider/CmSystem$RinglockStyle;->Bubble:Landroid/provider/CmSystem$RinglockStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$RinglockStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Landroid/provider/CmSystem$RinglockStyle;->Holo:Landroid/provider/CmSystem$RinglockStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$RinglockStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Landroid/provider/CmSystem$RinglockStyle;->Revamped:Landroid/provider/CmSystem$RinglockStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$RinglockStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Landroid/provider/CmSystem$RinglockStyle;->$SWITCH_TABLE$android$provider$CmSystem$RinglockStyle:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    new-instance v0, Landroid/provider/CmSystem$RinglockStyle;

    const-string v1, "Bubble"

    invoke-direct {v0, v1, v2}, Landroid/provider/CmSystem$RinglockStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/CmSystem$RinglockStyle;->Bubble:Landroid/provider/CmSystem$RinglockStyle;

    .line 206
    new-instance v0, Landroid/provider/CmSystem$RinglockStyle;

    const-string v1, "Revamped"

    invoke-direct {v0, v1, v3}, Landroid/provider/CmSystem$RinglockStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/CmSystem$RinglockStyle;->Revamped:Landroid/provider/CmSystem$RinglockStyle;

    .line 207
    new-instance v0, Landroid/provider/CmSystem$RinglockStyle;

    const-string v1, "Holo"

    invoke-direct {v0, v1, v4}, Landroid/provider/CmSystem$RinglockStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/CmSystem$RinglockStyle;->Holo:Landroid/provider/CmSystem$RinglockStyle;

    .line 208
    new-instance v0, Landroid/provider/CmSystem$RinglockStyle;

    const-string v1, "Blade"

    invoke-direct {v0, v1, v5}, Landroid/provider/CmSystem$RinglockStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/CmSystem$RinglockStyle;->Blade:Landroid/provider/CmSystem$RinglockStyle;

    .line 204
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/provider/CmSystem$RinglockStyle;

    sget-object v1, Landroid/provider/CmSystem$RinglockStyle;->Bubble:Landroid/provider/CmSystem$RinglockStyle;

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/CmSystem$RinglockStyle;->Revamped:Landroid/provider/CmSystem$RinglockStyle;

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/CmSystem$RinglockStyle;->Holo:Landroid/provider/CmSystem$RinglockStyle;

    aput-object v1, v0, v4

    sget-object v1, Landroid/provider/CmSystem$RinglockStyle;->Blade:Landroid/provider/CmSystem$RinglockStyle;

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/CmSystem$RinglockStyle;->ENUM$VALUES:[Landroid/provider/CmSystem$RinglockStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getIdByStyle(Landroid/provider/CmSystem$RinglockStyle;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 230
    invoke-static {}, Landroid/provider/CmSystem$RinglockStyle;->$SWITCH_TABLE$android$provider$CmSystem$RinglockStyle()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/provider/CmSystem$RinglockStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 240
    :goto_0
    return v0

    :pswitch_0
    move v0, v2

    .line 232
    goto :goto_0

    .line 234
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 236
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 238
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getStyleById(I)Landroid/provider/CmSystem$RinglockStyle;
    .locals 1
    .parameter

    .prologue
    .line 211
    packed-switch p0, :pswitch_data_0

    .line 221
    sget-object v0, Landroid/provider/CmSystem$RinglockStyle;->Bubble:Landroid/provider/CmSystem$RinglockStyle;

    :goto_0
    return-object v0

    .line 213
    :pswitch_0
    sget-object v0, Landroid/provider/CmSystem$RinglockStyle;->Bubble:Landroid/provider/CmSystem$RinglockStyle;

    goto :goto_0

    .line 215
    :pswitch_1
    sget-object v0, Landroid/provider/CmSystem$RinglockStyle;->Revamped:Landroid/provider/CmSystem$RinglockStyle;

    goto :goto_0

    .line 217
    :pswitch_2
    sget-object v0, Landroid/provider/CmSystem$RinglockStyle;->Holo:Landroid/provider/CmSystem$RinglockStyle;

    goto :goto_0

    .line 219
    :pswitch_3
    sget-object v0, Landroid/provider/CmSystem$RinglockStyle;->Blade:Landroid/provider/CmSystem$RinglockStyle;

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getStyleById(Ljava/lang/String;)Landroid/provider/CmSystem$RinglockStyle;
    .locals 1
    .parameter

    .prologue
    .line 226
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/provider/CmSystem$RinglockStyle;->getStyleById(I)Landroid/provider/CmSystem$RinglockStyle;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/provider/CmSystem$RinglockStyle;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Landroid/provider/CmSystem$RinglockStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/provider/CmSystem$RinglockStyle;

    return-object p0
.end method

.method public static values()[Landroid/provider/CmSystem$RinglockStyle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Landroid/provider/CmSystem$RinglockStyle;->ENUM$VALUES:[Landroid/provider/CmSystem$RinglockStyle;

    array-length v1, v0

    new-array v2, v1, [Landroid/provider/CmSystem$RinglockStyle;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
