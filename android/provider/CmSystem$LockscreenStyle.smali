.class public final enum Landroid/provider/CmSystem$LockscreenStyle;
.super Ljava/lang/Enum;
.source "CmSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CmSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LockscreenStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/provider/CmSystem$LockscreenStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$android$provider$CmSystem$LockscreenStyle:[I

.field public static final enum Circle:Landroid/provider/CmSystem$LockscreenStyle;

.field private static final synthetic ENUM$VALUES:[Landroid/provider/CmSystem$LockscreenStyle;

.field public static final enum Epic:Landroid/provider/CmSystem$LockscreenStyle;

.field public static final enum Fascinate:Landroid/provider/CmSystem$LockscreenStyle;

.field public static final enum Glass:Landroid/provider/CmSystem$LockscreenStyle;

.field public static final enum Lense:Landroid/provider/CmSystem$LockscreenStyle;

.field public static final enum Ring:Landroid/provider/CmSystem$LockscreenStyle;

.field public static final enum Rotary:Landroid/provider/CmSystem$LockscreenStyle;

.field public static final enum Slider:Landroid/provider/CmSystem$LockscreenStyle;


# direct methods
.method static synthetic $SWITCH_TABLE$android$provider$CmSystem$LockscreenStyle()[I
    .locals 3

    .prologue
    .line 70
    sget-object v0, Landroid/provider/CmSystem$LockscreenStyle;->$SWITCH_TABLE$android$provider$CmSystem$LockscreenStyle:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/provider/CmSystem$LockscreenStyle;->values()[Landroid/provider/CmSystem$LockscreenStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/provider/CmSystem$LockscreenStyle;->Circle:Landroid/provider/CmSystem$LockscreenStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$LockscreenStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Landroid/provider/CmSystem$LockscreenStyle;->Epic:Landroid/provider/CmSystem$LockscreenStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$LockscreenStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Landroid/provider/CmSystem$LockscreenStyle;->Fascinate:Landroid/provider/CmSystem$LockscreenStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$LockscreenStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Landroid/provider/CmSystem$LockscreenStyle;->Glass:Landroid/provider/CmSystem$LockscreenStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$LockscreenStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Landroid/provider/CmSystem$LockscreenStyle;->Lense:Landroid/provider/CmSystem$LockscreenStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$LockscreenStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Landroid/provider/CmSystem$LockscreenStyle;->Ring:Landroid/provider/CmSystem$LockscreenStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$LockscreenStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Landroid/provider/CmSystem$LockscreenStyle;->Rotary:Landroid/provider/CmSystem$LockscreenStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$LockscreenStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Landroid/provider/CmSystem$LockscreenStyle;->Slider:Landroid/provider/CmSystem$LockscreenStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$LockscreenStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Landroid/provider/CmSystem$LockscreenStyle;->$SWITCH_TABLE$android$provider$CmSystem$LockscreenStyle:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v0, Landroid/provider/CmSystem$LockscreenStyle;

    const-string v1, "Slider"

    invoke-direct {v0, v1, v3}, Landroid/provider/CmSystem$LockscreenStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/CmSystem$LockscreenStyle;->Slider:Landroid/provider/CmSystem$LockscreenStyle;

    .line 72
    new-instance v0, Landroid/provider/CmSystem$LockscreenStyle;

    const-string v1, "Rotary"

    invoke-direct {v0, v1, v4}, Landroid/provider/CmSystem$LockscreenStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/CmSystem$LockscreenStyle;->Rotary:Landroid/provider/CmSystem$LockscreenStyle;

    .line 73
    new-instance v0, Landroid/provider/CmSystem$LockscreenStyle;

    const-string v1, "Lense"

    invoke-direct {v0, v1, v5}, Landroid/provider/CmSystem$LockscreenStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/CmSystem$LockscreenStyle;->Lense:Landroid/provider/CmSystem$LockscreenStyle;

    .line 74
    new-instance v0, Landroid/provider/CmSystem$LockscreenStyle;

    const-string v1, "Ring"

    invoke-direct {v0, v1, v6}, Landroid/provider/CmSystem$LockscreenStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/CmSystem$LockscreenStyle;->Ring:Landroid/provider/CmSystem$LockscreenStyle;

    .line 75
    new-instance v0, Landroid/provider/CmSystem$LockscreenStyle;

    const-string v1, "Glass"

    invoke-direct {v0, v1, v7}, Landroid/provider/CmSystem$LockscreenStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/CmSystem$LockscreenStyle;->Glass:Landroid/provider/CmSystem$LockscreenStyle;

    .line 76
    new-instance v0, Landroid/provider/CmSystem$LockscreenStyle;

    const-string v1, "Epic"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/provider/CmSystem$LockscreenStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/CmSystem$LockscreenStyle;->Epic:Landroid/provider/CmSystem$LockscreenStyle;

    .line 77
    new-instance v0, Landroid/provider/CmSystem$LockscreenStyle;

    const-string v1, "Fascinate"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/provider/CmSystem$LockscreenStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/CmSystem$LockscreenStyle;->Fascinate:Landroid/provider/CmSystem$LockscreenStyle;

    .line 78
    new-instance v0, Landroid/provider/CmSystem$LockscreenStyle;

    const-string v1, "Circle"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/provider/CmSystem$LockscreenStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/CmSystem$LockscreenStyle;->Circle:Landroid/provider/CmSystem$LockscreenStyle;

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/provider/CmSystem$LockscreenStyle;

    sget-object v1, Landroid/provider/CmSystem$LockscreenStyle;->Slider:Landroid/provider/CmSystem$LockscreenStyle;

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/CmSystem$LockscreenStyle;->Rotary:Landroid/provider/CmSystem$LockscreenStyle;

    aput-object v1, v0, v4

    sget-object v1, Landroid/provider/CmSystem$LockscreenStyle;->Lense:Landroid/provider/CmSystem$LockscreenStyle;

    aput-object v1, v0, v5

    sget-object v1, Landroid/provider/CmSystem$LockscreenStyle;->Ring:Landroid/provider/CmSystem$LockscreenStyle;

    aput-object v1, v0, v6

    sget-object v1, Landroid/provider/CmSystem$LockscreenStyle;->Glass:Landroid/provider/CmSystem$LockscreenStyle;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/provider/CmSystem$LockscreenStyle;->Epic:Landroid/provider/CmSystem$LockscreenStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/provider/CmSystem$LockscreenStyle;->Fascinate:Landroid/provider/CmSystem$LockscreenStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/provider/CmSystem$LockscreenStyle;->Circle:Landroid/provider/CmSystem$LockscreenStyle;

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/CmSystem$LockscreenStyle;->ENUM$VALUES:[Landroid/provider/CmSystem$LockscreenStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getIdByStyle(Landroid/provider/CmSystem$LockscreenStyle;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x5

    .line 111
    invoke-static {}, Landroid/provider/CmSystem$LockscreenStyle;->$SWITCH_TABLE$android$provider$CmSystem$LockscreenStyle()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/provider/CmSystem$LockscreenStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 129
    :goto_0
    return v0

    .line 113
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 115
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 117
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    move v0, v2

    .line 119
    goto :goto_0

    .line 121
    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    .line 123
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 125
    :pswitch_6
    const/16 v0, 0x8

    goto :goto_0

    .line 127
    :pswitch_7
    const/16 v0, 0x9

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getStyleById(I)Landroid/provider/CmSystem$LockscreenStyle;
    .locals 1
    .parameter

    .prologue
    .line 81
    packed-switch p0, :pswitch_data_0

    .line 102
    sget-object v0, Landroid/provider/CmSystem$LockscreenStyle;->Ring:Landroid/provider/CmSystem$LockscreenStyle;

    :goto_0
    return-object v0

    .line 83
    :pswitch_0
    sget-object v0, Landroid/provider/CmSystem$LockscreenStyle;->Slider:Landroid/provider/CmSystem$LockscreenStyle;

    goto :goto_0

    .line 85
    :pswitch_1
    sget-object v0, Landroid/provider/CmSystem$LockscreenStyle;->Rotary:Landroid/provider/CmSystem$LockscreenStyle;

    goto :goto_0

    .line 88
    :pswitch_2
    sget-object v0, Landroid/provider/CmSystem$LockscreenStyle;->Rotary:Landroid/provider/CmSystem$LockscreenStyle;

    goto :goto_0

    .line 90
    :pswitch_3
    sget-object v0, Landroid/provider/CmSystem$LockscreenStyle;->Lense:Landroid/provider/CmSystem$LockscreenStyle;

    goto :goto_0

    .line 92
    :pswitch_4
    sget-object v0, Landroid/provider/CmSystem$LockscreenStyle;->Ring:Landroid/provider/CmSystem$LockscreenStyle;

    goto :goto_0

    .line 94
    :pswitch_5
    sget-object v0, Landroid/provider/CmSystem$LockscreenStyle;->Glass:Landroid/provider/CmSystem$LockscreenStyle;

    goto :goto_0

    .line 96
    :pswitch_6
    sget-object v0, Landroid/provider/CmSystem$LockscreenStyle;->Epic:Landroid/provider/CmSystem$LockscreenStyle;

    goto :goto_0

    .line 98
    :pswitch_7
    sget-object v0, Landroid/provider/CmSystem$LockscreenStyle;->Fascinate:Landroid/provider/CmSystem$LockscreenStyle;

    goto :goto_0

    .line 100
    :pswitch_8
    sget-object v0, Landroid/provider/CmSystem$LockscreenStyle;->Circle:Landroid/provider/CmSystem$LockscreenStyle;

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getStyleById(Ljava/lang/String;)Landroid/provider/CmSystem$LockscreenStyle;
    .locals 1
    .parameter

    .prologue
    .line 107
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/provider/CmSystem$LockscreenStyle;->getStyleById(I)Landroid/provider/CmSystem$LockscreenStyle;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/provider/CmSystem$LockscreenStyle;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Landroid/provider/CmSystem$LockscreenStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/provider/CmSystem$LockscreenStyle;

    return-object p0
.end method

.method public static values()[Landroid/provider/CmSystem$LockscreenStyle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Landroid/provider/CmSystem$LockscreenStyle;->ENUM$VALUES:[Landroid/provider/CmSystem$LockscreenStyle;

    array-length v1, v0

    new-array v2, v1, [Landroid/provider/CmSystem$LockscreenStyle;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
