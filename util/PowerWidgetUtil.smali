.class public Lcom/lidroid/util/PowerWidgetUtil;
.super Ljava/lang/Object;
.source "PowerWidgetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;
    }
.end annotation


# static fields
.field public static final BUTTONS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final BUTTONS_DEFAULT:Ljava/lang/String; = "toggleWifi|toggleMobileData|toggleBluetooth|toggleGPS|toggleFlashlight|toggleWifiAp|toggleBrightness|toggleAirplane|toggleSound|toggleAutoRotate|toggleSync|toggleScreenTimeout|toggleLockScreen|toggleReboot|toggleShutdown"

.field public static final BUTTON_AIRPLANE:Ljava/lang/String; = "toggleAirplane"

.field public static final BUTTON_AUTOROTATE:Ljava/lang/String; = "toggleAutoRotate"

.field public static final BUTTON_BLUETOOTH:Ljava/lang/String; = "toggleBluetooth"

.field public static final BUTTON_BRIGHTNESS:Ljava/lang/String; = "toggleBrightness"

.field private static final BUTTON_DELIMITER:Ljava/lang/String; = "|"

.field public static final BUTTON_FLASHLIGHT:Ljava/lang/String; = "toggleFlashlight"

.field public static final BUTTON_GPS:Ljava/lang/String; = "toggleGPS"

.field public static final BUTTON_LOCKSCREEN:Ljava/lang/String; = "toggleLockScreen"

.field public static final BUTTON_MOBILEDATA:Ljava/lang/String; = "toggleMobileData"

.field public static final BUTTON_REBOOT:Ljava/lang/String; = "toggleReboot"

.field public static final BUTTON_SCREENTIMEOUT:Ljava/lang/String; = "toggleScreenTimeout"

.field public static final BUTTON_SHUTDOWN:Ljava/lang/String; = "toggleShutdown"

.field public static final BUTTON_SOUND:Ljava/lang/String; = "toggleSound"

.field public static final BUTTON_SYNC:Ljava/lang/String; = "toggleSync"

.field public static final BUTTON_WIFI:Ljava/lang/String; = "toggleWifi"

.field public static final BUTTON_WIFI_AP:Ljava/lang/String; = "toggleWifiAp"

.field public static final EXPANDED_BRIGHTNESS_MODE:Ljava/lang/String; = "expanded_brightness_mode"

.field public static final EXPANDED_HAPTIC_FEEDBACK:Ljava/lang/String; = "expanded_haptic_feedback"

.field public static final EXPANDED_HIDE_ONCHANGE:Ljava/lang/String; = "expanded_hide_onchange"

.field public static final EXPANDED_RING_MODE:Ljava/lang/String; = "expanded_ring_mode"

.field public static final WIDGET_BUTTONS:Ljava/lang/String; = "expanded_widget_buttons"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lidroid/util/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    .line 53
    sget-object v0, Lcom/lidroid/util/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleAirplane"

    new-instance v2, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleAirplane"

    const v4, 0x7f080064

    const-string v5, "lidroid:drawable/stat_airplane_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/lidroid/util/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleAutoRotate"

    new-instance v2, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleAutoRotate"

    const v4, 0x7f080063

    const-string v5, "lidroid:drawable/stat_orientation_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/lidroid/util/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleBluetooth"

    new-instance v2, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleBluetooth"

    const v4, 0x7f08005b

    const-string v5, "lidroid:drawable/stat_bluetooth_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/lidroid/util/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleBrightness"

    new-instance v2, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleBrightness"

    const v4, 0x7f08005e

    const-string v5, "lidroid:drawable/stat_brightness_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/lidroid/util/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleFlashlight"

    new-instance v2, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleFlashlight"

    const v4, 0x7f080065

    const-string v5, "lidroid:drawable/stat_flashlight_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/lidroid/util/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleGPS"

    new-instance v2, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleGPS"

    const v4, 0x7f08005c

    const-string v5, "lidroid:drawable/stat_gps_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/lidroid/util/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleLockScreen"

    new-instance v2, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleLockScreen"

    const v4, 0x7f080062

    const-string v5, "lidroid:drawable/stat_lock_screen_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/lidroid/util/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleMobileData"

    new-instance v2, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleMobileData"

    const v4, 0x7f080061

    const-string v5, "lidroid:drawable/stat_data_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/lidroid/util/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleReboot"

    new-instance v2, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleReboot"

    const v4, 0x7f080066

    const-string v5, "lidroid:drawable/stat_reboot"

    invoke-direct {v2, v3, v4, v5}, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/lidroid/util/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleScreenTimeout"

    new-instance v2, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleScreenTimeout"

    const v4, 0x7f080060

    const-string v5, "lidroid:drawable/stat_screen_timeout_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/lidroid/util/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleShutdown"

    new-instance v2, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleShutdown"

    const v4, 0x7f080067

    const-string v5, "lidroid:drawable/stat_shutdown"

    invoke-direct {v2, v3, v4, v5}, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/lidroid/util/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleSound"

    new-instance v2, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleSound"

    const v4, 0x7f08005d

    const-string v5, "lidroid:drawable/stat_ring_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/lidroid/util/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleSync"

    new-instance v2, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleSync"

    const v4, 0x7f08005f

    const-string v5, "lidroid:drawable/stat_sync_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/lidroid/util/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleWifi"

    new-instance v2, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleWifi"

    const v4, 0x7f080059

    const-string v5, "lidroid:drawable/stat_wifi_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/lidroid/util/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleWifiAp"

    new-instance v2, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleWifiAp"

    const v4, 0x7f08005a

    const-string v5, "lidroid:drawable/stat_wifi_ap_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    return-void
.end method

.method public static getButtonListFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter "buttons"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getButtonStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, buttons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 178
    :cond_0
    const-string v1, ""

    .line 184
    :cond_1
    return-object v1

    .line 180
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    .local v1, s:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getCurrentButtons(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "expanded_widget_buttons"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, buttons:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 139
    const-string v0, "toggleWifi|toggleMobileData|toggleBluetooth|toggleGPS|toggleFlashlight|toggleWifiAp|toggleBrightness|toggleAirplane|toggleSound|toggleAutoRotate|toggleSync|toggleScreenTimeout|toggleLockScreen|toggleReboot|toggleShutdown"

    .line 141
    :cond_0
    return-object v0
.end method

.method public static mergeInNewButtonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "oldString"
    .parameter "newString"

    .prologue
    .line 150
    invoke-static {p0}, Lcom/lidroid/util/PowerWidgetUtil;->getButtonListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 151
    .local v4, oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/lidroid/util/PowerWidgetUtil;->getButtonListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 152
    .local v3, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v2, mergedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    .local v0, button:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    .end local v0           #button:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    .restart local v0       #button:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 164
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    .end local v0           #button:Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Lcom/lidroid/util/PowerWidgetUtil;->getButtonStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static saveCurrentButtons(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "buttons"

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_widget_buttons"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    return-void
.end method
