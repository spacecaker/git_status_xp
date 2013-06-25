.class public final enum Landroid/provider/CmSystem$InCallStyle;
.super Ljava/lang/Enum;
.source "CmSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CmSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InCallStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/provider/CmSystem$InCallStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$android$provider$CmSystem$InCallStyle:[I

.field private static final synthetic ENUM$VALUES:[Landroid/provider/CmSystem$InCallStyle;

.field public static final enum Ring:Landroid/provider/CmSystem$InCallStyle;

.field public static final enum Rotary:Landroid/provider/CmSystem$InCallStyle;

.field public static final enum Slider:Landroid/provider/CmSystem$InCallStyle;


# direct methods
.method static synthetic $SWITCH_TABLE$android$provider$CmSystem$InCallStyle()[I
    .locals 3

    .prologue
    .line 134
    sget-object v0, Landroid/provider/CmSystem$InCallStyle;->$SWITCH_TABLE$android$provider$CmSystem$InCallStyle:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/provider/CmSystem$InCallStyle;->values()[Landroid/provider/CmSystem$InCallStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/provider/CmSystem$InCallStyle;->Ring:Landroid/provider/CmSystem$InCallStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$InCallStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Landroid/provider/CmSystem$InCallStyle;->Rotary:Landroid/provider/CmSystem$InCallStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$InCallStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Landroid/provider/CmSystem$InCallStyle;->Slider:Landroid/provider/CmSystem$InCallStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$InCallStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Landroid/provider/CmSystem$InCallStyle;->$SWITCH_TABLE$android$provider$CmSystem$InCallStyle:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    new-instance v0, Landroid/provider/CmSystem$InCallStyle;

    const-string v1, "Slider"

    invoke-direct {v0, v1, v2}, Landroid/provider/CmSystem$InCallStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/CmSystem$InCallStyle;->Slider:Landroid/provider/CmSystem$InCallStyle;

    .line 136
    new-instance v0, Landroid/provider/CmSystem$InCallStyle;

    const-string v1, "Rotary"

    invoke-direct {v0, v1, v3}, Landroid/provider/CmSystem$InCallStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/CmSystem$InCallStyle;->Rotary:Landroid/provider/CmSystem$InCallStyle;

    .line 137
    new-instance v0, Landroid/provider/CmSystem$InCallStyle;

    const-string v1, "Ring"

    invoke-direct {v0, v1, v4}, Landroid/provider/CmSystem$InCallStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/CmSystem$InCallStyle;->Ring:Landroid/provider/CmSystem$InCallStyle;

    .line 134
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/provider/CmSystem$InCallStyle;

    sget-object v1, Landroid/provider/CmSystem$InCallStyle;->Slider:Landroid/provider/CmSystem$InCallStyle;

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/CmSystem$InCallStyle;->Rotary:Landroid/provider/CmSystem$InCallStyle;

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/CmSystem$InCallStyle;->Ring:Landroid/provider/CmSystem$InCallStyle;

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/CmSystem$InCallStyle;->ENUM$VALUES:[Landroid/provider/CmSystem$InCallStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getIdByStyle(Landroid/provider/CmSystem$InCallStyle;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    .line 160
    invoke-static {}, Landroid/provider/CmSystem$InCallStyle;->$SWITCH_TABLE$android$provider$CmSystem$InCallStyle()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/provider/CmSystem$InCallStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 168
    :goto_0
    return v0

    .line 162
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 164
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 166
    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getStyleById(I)Landroid/provider/CmSystem$InCallStyle;
    .locals 1
    .parameter

    .prologue
    .line 140
    packed-switch p0, :pswitch_data_0

    .line 151
    sget-object v0, Landroid/provider/CmSystem$InCallStyle;->Ring:Landroid/provider/CmSystem$InCallStyle;

    :goto_0
    return-object v0

    .line 142
    :pswitch_0
    sget-object v0, Landroid/provider/CmSystem$InCallStyle;->Slider:Landroid/provider/CmSystem$InCallStyle;

    goto :goto_0

    .line 144
    :pswitch_1
    sget-object v0, Landroid/provider/CmSystem$InCallStyle;->Rotary:Landroid/provider/CmSystem$InCallStyle;

    goto :goto_0

    .line 147
    :pswitch_2
    sget-object v0, Landroid/provider/CmSystem$InCallStyle;->Rotary:Landroid/provider/CmSystem$InCallStyle;

    goto :goto_0

    .line 149
    :pswitch_3
    sget-object v0, Landroid/provider/CmSystem$InCallStyle;->Ring:Landroid/provider/CmSystem$InCallStyle;

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getStyleById(Ljava/lang/String;)Landroid/provider/CmSystem$InCallStyle;
    .locals 1
    .parameter

    .prologue
    .line 156
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/provider/CmSystem$InCallStyle;->getStyleById(I)Landroid/provider/CmSystem$InCallStyle;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/provider/CmSystem$InCallStyle;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Landroid/provider/CmSystem$InCallStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/provider/CmSystem$InCallStyle;

    return-object p0
.end method

.method public static values()[Landroid/provider/CmSystem$InCallStyle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Landroid/provider/CmSystem$InCallStyle;->ENUM$VALUES:[Landroid/provider/CmSystem$InCallStyle;

    array-length v1, v0

    new-array v2, v1, [Landroid/provider/CmSystem$InCallStyle;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
