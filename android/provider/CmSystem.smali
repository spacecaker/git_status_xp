.class public final Landroid/provider/CmSystem;
.super Ljava/lang/Object;
.source "CmSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CmSystem$InCallStyle;,
        Landroid/provider/CmSystem$LockscreenStyle;,
        Landroid/provider/CmSystem$RinglockStyle;,
        Landroid/provider/CmSystem$RotaryStyle;
    }
.end annotation


# static fields
.field public static final CM_DEFAULT_BOTTOM_STATUS_BAR:I = 0x2

.field public static final CM_DEFAULT_DISABLE_FULLSCREEN:I = 0xb

.field public static final CM_DEFAULT_DISABLE_LOCKSCREEN:I = 0xa

.field public static final CM_DEFAULT_EXTEND_POWER_MENU:I = 0xd

.field public static final CM_DEFAULT_POWER_MENU_BACK:I = 0x10

.field public static final CM_DEFAULT_POWER_MENU_HOME:I = 0xe

.field public static final CM_DEFAULT_POWER_MENU_MENU:I = 0xf

.field public static final CM_DEFAULT_REMAPPED_BOTH_VOL_INDEX:I = 0x14

.field public static final CM_DEFAULT_REMAPPED_LONG_BOTH_VOL_INDEX:I = 0x15

.field public static final CM_DEFAULT_REMAPPED_LONG_VOL_DOWN_INDEX:I = 0x13

.field public static final CM_DEFAULT_REMAPPED_LONG_VOL_UP_INDEX:I = 0x12

.field public static final CM_DEFAULT_REVERSE_VOLUME_BEHAVIOR:I = 0x11

.field public static final CM_DEFAULT_SHOW_SOFT_BACK:I = 0x7

.field public static final CM_DEFAULT_SHOW_SOFT_HOME:I = 0x5

.field public static final CM_DEFAULT_SHOW_SOFT_MENU:I = 0x6

.field public static final CM_DEFAULT_SHOW_SOFT_QUICK_NA:I = 0x9

.field public static final CM_DEFAULT_SHOW_SOFT_SEARCH:I = 0x8

.field public static final CM_DEFAULT_SOFT_BUTTONS_LEFT:I = 0x4

.field public static final CM_DEFAULT_UNHIDE_BUTTON_INDEX:I = 0xc

.field public static final CM_DEFAULT_USE_DEAD_ZONE:I = 0x3

.field public static final CM_HAS_SOFT_BUTTONS:I = 0x1

.field public static final CM_IS_TABLET:I = 0x0

.field public static final KEYCODE_NONE:I = -0x1

.field public static final VOLUME_ACTION_LONG_HOME:I = -0x1

.field public static final VOLUME_ACTION_NONE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    return-void
.end method

.method public static getDefaultBool(Landroid/content/Context;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-static {p1}, Landroid/provider/CmSystem;->getResourceId(I)I

    move-result v0

    .line 252
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultInt(Landroid/content/Context;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-static {p1}, Landroid/provider/CmSystem;->getResourceId(I)I

    move-result v0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getResourceId(I)I
    .locals 1
    .parameter

    .prologue
    .line 270
    const/4 v0, 0x0

    .line 272
    packed-switch p0, :pswitch_data_0

    .line 349
    :goto_0
    return v0

    .line 274
    :pswitch_0
    const v0, 0x4070002

    .line 275
    goto :goto_0

    .line 277
    :pswitch_1
    const v0, 0x4070003

    .line 278
    goto :goto_0

    .line 281
    :pswitch_2
    const v0, 0x4070004

    .line 282
    goto :goto_0

    .line 284
    :pswitch_3
    const v0, 0x4070005

    .line 285
    goto :goto_0

    .line 287
    :pswitch_4
    const v0, 0x4070006

    .line 288
    goto :goto_0

    .line 291
    :pswitch_5
    const v0, 0x4070007

    .line 292
    goto :goto_0

    .line 294
    :pswitch_6
    const v0, 0x4070008

    .line 295
    goto :goto_0

    .line 297
    :pswitch_7
    const v0, 0x4070009

    .line 298
    goto :goto_0

    .line 300
    :pswitch_8
    const v0, 0x407000a

    .line 301
    goto :goto_0

    .line 303
    :pswitch_9
    const v0, 0x407000b

    .line 304
    goto :goto_0

    .line 307
    :pswitch_a
    const v0, 0x407000c

    .line 308
    goto :goto_0

    .line 310
    :pswitch_b
    const v0, 0x407000d

    .line 311
    goto :goto_0

    .line 314
    :pswitch_c
    const v0, 0x407000e

    .line 315
    goto :goto_0

    .line 318
    :pswitch_d
    const v0, 0x407000f

    .line 319
    goto :goto_0

    .line 321
    :pswitch_e
    const v0, 0x4070010

    .line 322
    goto :goto_0

    .line 324
    :pswitch_f
    const v0, 0x4070011

    .line 325
    goto :goto_0

    .line 328
    :pswitch_10
    const v0, 0x4070012

    .line 329
    goto :goto_0

    .line 333
    :pswitch_11
    const v0, 0x40a000c

    .line 334
    goto :goto_0

    .line 336
    :pswitch_12
    const v0, 0x40a000d

    .line 337
    goto :goto_0

    .line 339
    :pswitch_13
    const v0, 0x40a000e

    .line 340
    goto :goto_0

    .line 342
    :pswitch_14
    const v0, 0x40a000f

    .line 343
    goto :goto_0

    .line 345
    :pswitch_15
    const v0, 0x40a0010

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_11
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public static translateActionToKeycode(I)I
    .locals 1
    .parameter

    .prologue
    .line 354
    packed-switch p0, :pswitch_data_0

    .line 366
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 355
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 356
    :pswitch_1
    const/16 v0, 0x52

    goto :goto_0

    .line 357
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 358
    :pswitch_3
    const/16 v0, 0x54

    goto :goto_0

    .line 359
    :pswitch_4
    const/16 v0, 0x1a

    goto :goto_0

    .line 360
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 361
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 362
    :pswitch_7
    const/16 v0, 0x55

    goto :goto_0

    .line 363
    :pswitch_8
    const/16 v0, 0x57

    goto :goto_0

    .line 364
    :pswitch_9
    const/16 v0, 0x58

    goto :goto_0

    .line 365
    :pswitch_a
    const/4 v0, -0x1

    goto :goto_0

    .line 354
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
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static final translateUnhideIndexToKeycode(I)I
    .locals 1
    .parameter

    .prologue
    .line 372
    packed-switch p0, :pswitch_data_0

    .line 379
    const/4 v0, 0x3

    :goto_0
    return v0

    .line 373
    :pswitch_0
    const/16 v0, 0x52

    goto :goto_0

    .line 374
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 375
    :pswitch_2
    const/16 v0, 0x54

    goto :goto_0

    .line 376
    :pswitch_3
    const/16 v0, 0x1b

    goto :goto_0

    .line 377
    :pswitch_4
    const/16 v0, 0x18

    goto :goto_0

    .line 378
    :pswitch_5
    const/16 v0, 0x19

    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
