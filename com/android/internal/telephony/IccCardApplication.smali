.class public Lcom/android/internal/telephony/IccCardApplication;
.super Ljava/lang/Object;
.source "IccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardApplication$PinState;,
        Lcom/android/internal/telephony/IccCardApplication$PersoSubState;,
        Lcom/android/internal/telephony/IccCardApplication$AppState;,
        Lcom/android/internal/telephony/IccCardApplication$AppType;
    }
.end annotation


# instance fields
.field public aid:Ljava/lang/String;

.field public app_label:Ljava/lang/String;

.field public app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

.field public app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

.field public perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

.field public pin1:Lcom/android/internal/telephony/IccCardApplication$PinState;

.field public pin1_replaced:I

.field public pin2:Lcom/android/internal/telephony/IccCardApplication$PinState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method AppStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppState;
    .locals 4
    .parameter "state"

    .prologue
    .line 199
    packed-switch p1, :pswitch_data_0

    .line 208
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_AppState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 211
    .local v0, newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :goto_0
    return-object v0

    .line 201
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_0

    .line 202
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_0

    .line 203
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_0

    .line 204
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_0

    .line 205
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_0

    .line 206
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_ILLEGAL:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_0

    .line 199
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
    .end packed-switch
.end method

.method AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppType;
    .locals 4
    .parameter "type"

    .prologue
    .line 183
    packed-switch p1, :pswitch_data_0

    .line 190
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_AppType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 193
    .local v0, newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :goto_0
    return-object v0

    .line 185
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    goto :goto_0

    .line 186
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    goto :goto_0

    .line 187
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    goto :goto_0

    .line 188
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    .locals 4
    .parameter "substate"

    .prologue
    .line 217
    packed-switch p1, :pswitch_data_0

    .line 244
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_PersoSubstate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .line 247
    .local v0, newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :goto_0
    return-object v0

    .line 219
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 220
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 221
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 222
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 223
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 224
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 225
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 226
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 227
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 228
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_a
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 229
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_b
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 230
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_c
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 231
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_d
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 232
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_e
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 233
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_f
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 234
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_10
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 235
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_11
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 236
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_12
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 237
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_13
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 238
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_14
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 239
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_15
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 240
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_16
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 241
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_17
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 242
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_18
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 217
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
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$PinState;
    .locals 4
    .parameter "type"

    .prologue
    .line 253
    packed-switch p1, :pswitch_data_0

    .line 261
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_PIN_STATE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$PinState;

    .line 264
    .local v0, newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    :goto_0
    return-object v0

    .line 255
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/IccCardApplication$PinState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    goto :goto_0

    .line 256
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardApplication$PinState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    goto :goto_0

    .line 257
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/IccCardApplication$PinState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    goto :goto_0

    .line 258
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/IccCardApplication$PinState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    goto :goto_0

    .line 259
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardApplication$PinState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
