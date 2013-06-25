.class public final Landroid/util/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Config$TelephonyFeature;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final CONFIG_NATIONAL_LANGUAGE_SINGLE_SHIFT_TABLES:Z = false

#the value of this static final field might be set in the static constructor
.field public static final CSC_CLIDIGIT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final CSC_CLIDIGIT_ON_MESSAGE:I = 0x0

.field public static final CSC_CODE:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final CSC_CONNECTION_TIMEOUT:I = 0x0

.field public static final CSC_CONTACTS_SAVE_POSITION:Ljava/lang/String; = null

.field public static final CSC_COUNTRY:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final CSC_FDN_ON_MMS:Z = false

#the value of this static final field might be set in the static constructor
.field public static final CSC_FDN_ON_MMS_RECIPIENT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final CSC_GMS_EXCLUSION:Z = false

.field public static final CSC_MODEL_NAME:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final CSC_MPDP_NOK_HSDPA:Z = false

#the value of this static final field might be set in the static constructor
.field public static final CSC_MSG_STRICT_COMPARE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final CSC_SMSC_DISABLE_EDIT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final CSC_SPEEDDIAL_EMERGENCY_KEY:I = 0x0

.field public static final CSC_SPEEDDIAL_EMERGENCY_NUMBER:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final CSC_SPEEDDIAL_SERVICE_KEY:I = 0x0

.field public static final CSC_SPEEDDIAL_SERVICE_NAME:Ljava/lang/String; = null

.field public static final CSC_SPEEDDIAL_SERVICE_NUMBER:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final CSC_VM_DISABLE_EDIT:Z = false

.field public static final CSC_X_WAP_PROFILE:Ljava/lang/String; = null

.field public static final CSC_YAHOO_SEARCH_URL:Ljava/lang/String; = null

.field public static final DEBUG:Z = false

.field public static final IS_ENG_MODE:Z = false

.field public static final LOGD:Z = true
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOGV:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROFILE:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RELEASE:Z = true
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const-string/jumbo v6, "ro.csc.sales_code"

    const-string/jumbo v5, "unknown"

    const-string v3, ""

    .line 143
    const-string/jumbo v0, "ro.product.model"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Config;->CSC_MODEL_NAME:Ljava/lang/String;

    .line 144
    const-string/jumbo v0, "ril.sales_code"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Config;->CSC_CODE:Ljava/lang/String;

    .line 145
    const-string/jumbo v0, "ro.csc.country_code"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Config;->CSC_COUNTRY:Ljava/lang/String;

    .line 147
    const-string/jumbo v0, "ro.csc.gms_exclusion"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/util/Config;->CSC_GMS_EXCLUSION:Z

    .line 148
    const-string/jumbo v0, "ro.csc.yahoo_search_url"

    const-string v1, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Config;->CSC_YAHOO_SEARCH_URL:Ljava/lang/String;

    .line 150
    const-string/jumbo v0, "ro.csc.contacts_save_position"

    const-string v1, "Always ask"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Config;->CSC_CONTACTS_SAVE_POSITION:Ljava/lang/String;

    .line 152
    const-string/jumbo v0, "ro.csc.mpdp_nok_hsdpa"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/util/Config;->CSC_MPDP_NOK_HSDPA:Z

    .line 154
    const-string/jumbo v0, "ro.csc.fdn_on_mms"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/util/Config;->CSC_FDN_ON_MMS:Z

    .line 155
    const-string/jumbo v0, "ro.csc.fdn_on_mms_recipient"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/util/Config;->CSC_FDN_ON_MMS_RECIPIENT:Z

    .line 157
    const-string/jumbo v0, "ro.csc.msg_strict_comp"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/util/Config;->CSC_MSG_STRICT_COMPARE:Z

    .line 158
    const-string/jumbo v0, "ro.csc.clidigit_on_msg"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/util/Config;->CSC_CLIDIGIT_ON_MESSAGE:I

    .line 160
    const-string/jumbo v0, "ro.csc.vm_addr_disable_edit"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/util/Config;->CSC_VM_DISABLE_EDIT:Z

    .line 161
    const-string/jumbo v0, "ro.csc.smsc_disable_edit"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/util/Config;->CSC_SMSC_DISABLE_EDIT:Z

    .line 162
    const-string/jumbo v0, "ro.csc.clidigit"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/util/Config;->CSC_CLIDIGIT:I

    .line 164
    const-string/jumbo v0, "ro.csc.speeddial_emergency_key"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/util/Config;->CSC_SPEEDDIAL_EMERGENCY_KEY:I

    .line 165
    const-string/jumbo v0, "ro.csc.speeddial_emergency_num"

    const-string v1, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Config;->CSC_SPEEDDIAL_EMERGENCY_NUMBER:Ljava/lang/String;

    .line 167
    const-string/jumbo v0, "ro.csc.speeddial_service_key"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/util/Config;->CSC_SPEEDDIAL_SERVICE_KEY:I

    .line 168
    const-string/jumbo v0, "ro.csc.speeddial_service_num"

    const-string v1, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Config;->CSC_SPEEDDIAL_SERVICE_NUMBER:Ljava/lang/String;

    .line 169
    const-string/jumbo v0, "ro.csc.speeddial_service_name"

    const-string v1, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Config;->CSC_SPEEDDIAL_SERVICE_NAME:Ljava/lang/String;

    .line 171
    const-string/jumbo v0, "ro.csc.x_wap_profile"

    const-string v1, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Config;->CSC_X_WAP_PROFILE:Ljava/lang/String;

    .line 172
    const-string/jumbo v0, "ro.csc.connection_timeout"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/util/Config;->CSC_CONNECTION_TIMEOUT:I

    .line 173
    const-string v0, "TUR"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TRC"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/util/Config;->CONFIG_NATIONAL_LANGUAGE_SINGLE_SHIFT_TABLES:Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method
