.class public abstract Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;
.super Landroid/os/Binder;
.source "IQtiImsExtListener.java"

# interfaces
.implements Lorg/codeaurora/ims/internal/IQtiImsExtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/internal/IQtiImsExtListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.codeaurora.ims.internal.IQtiImsExtListener"

.field static final TRANSACTION_notifyParticipantStatusInfo:I = 0xb

.field static final TRANSACTION_notifySsacStatus:I = 0xa

.field static final TRANSACTION_notifyVopsStatus:I = 0x9

.field static final TRANSACTION_onGetCallForwardUncondTimer:I = 0x2

.field static final TRANSACTION_onGetHandoverConfig:I = 0xf

.field static final TRANSACTION_onGetPacketCount:I = 0x4

.field static final TRANSACTION_onGetPacketErrorCount:I = 0x5

.field static final TRANSACTION_onSetCallForwardUncondTimer:I = 0x1

.field static final TRANSACTION_onSetHandoverConfig:I = 0xe

.field static final TRANSACTION_onUTReqFailed:I = 0x3

.field static final TRANSACTION_onVoltePreferenceQueried:I = 0xd

.field static final TRANSACTION_onVoltePreferenceUpdated:I = 0xc

.field static final TRANSACTION_receiveCallDeflectResponse:I = 0x6

.field static final TRANSACTION_receiveCallTransferResponse:I = 0x7

.field static final TRANSACTION_receiveCancelModifyCallResponse:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "org.codeaurora.ims.internal.IQtiImsExtListener"

    invoke-virtual {p0, p0, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "org.codeaurora.ims.internal.IQtiImsExtListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 231
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 47
    :sswitch_0
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v4, 0x1

    return v4

    .line 52
    :sswitch_1
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 56
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 57
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onSetCallForwardUncondTimer(II)V

    .line 58
    const/4 v4, 0x1

    return v4

    .line 62
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_2
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 66
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 68
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 70
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 72
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 74
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 76
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 78
    .local v11, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 80
    .local v12, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg8":I
    move-object/from16 v4, p0

    .line 81
    invoke-virtual/range {v4 .. v13}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onGetCallForwardUncondTimer(IIIIIIILjava/lang/String;I)V

    .line 82
    const/4 v4, 0x1

    return v4

    .line 86
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":Ljava/lang/String;
    .end local v13    # "_arg8":I
    :sswitch_3
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 90
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 92
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 93
    .local v21, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v6, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onUTReqFailed(IILjava/lang/String;)V

    .line 94
    const/4 v4, 0x1

    return v4

    .line 98
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v21    # "_arg2":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 102
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 104
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 105
    .local v22, "_arg2":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v5, v6, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onGetPacketCount(IIJ)V

    .line 106
    const/4 v4, 0x1

    return v4

    .line 110
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v22    # "_arg2":J
    :sswitch_5
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 114
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 116
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 117
    .restart local v22    # "_arg2":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v5, v6, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onGetPacketErrorCount(IIJ)V

    .line 118
    const/4 v4, 0x1

    return v4

    .line 122
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v22    # "_arg2":J
    :sswitch_6
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 126
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 127
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->receiveCallDeflectResponse(II)V

    .line 128
    const/4 v4, 0x1

    return v4

    .line 132
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_7
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 136
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 137
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->receiveCallTransferResponse(II)V

    .line 138
    const/4 v4, 0x1

    return v4

    .line 142
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_8
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 146
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 147
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->receiveCancelModifyCallResponse(II)V

    .line 148
    const/4 v4, 0x1

    return v4

    .line 152
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_9
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 156
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/16 v20, 0x1

    .line 157
    .local v20, "_arg1":Z
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->notifyVopsStatus(IZ)V

    .line 158
    const/4 v4, 0x1

    return v4

    .line 156
    .end local v20    # "_arg1":Z
    :cond_0
    const/16 v20, 0x0

    .restart local v20    # "_arg1":Z
    goto :goto_0

    .line 162
    .end local v5    # "_arg0":I
    .end local v20    # "_arg1":Z
    :sswitch_a
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 166
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v20, 0x1

    .line 167
    .restart local v20    # "_arg1":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->notifySsacStatus(IZ)V

    .line 168
    const/4 v4, 0x1

    return v4

    .line 166
    .end local v20    # "_arg1":Z
    :cond_1
    const/16 v20, 0x0

    .restart local v20    # "_arg1":Z
    goto :goto_1

    .line 172
    .end local v5    # "_arg0":I
    .end local v20    # "_arg1":Z
    :sswitch_b
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 176
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 178
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 180
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 182
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/16 v19, 0x1

    .local v19, "_arg4":Z
    :goto_2
    move-object/from16 v14, p0

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    .line 183
    invoke-virtual/range {v14 .. v19}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->notifyParticipantStatusInfo(IIILjava/lang/String;Z)V

    .line 184
    const/4 v4, 0x1

    return v4

    .line 182
    .end local v19    # "_arg4":Z
    :cond_2
    const/16 v19, 0x0

    .restart local v19    # "_arg4":Z
    goto :goto_2

    .line 188
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Z
    :sswitch_c
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 192
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 193
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onVoltePreferenceUpdated(II)V

    .line 194
    const/4 v4, 0x1

    return v4

    .line 198
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_d
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 202
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 204
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 205
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onVoltePreferenceQueried(III)V

    .line 206
    const/4 v4, 0x1

    return v4

    .line 210
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :sswitch_e
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 214
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 215
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onSetHandoverConfig(II)V

    .line 216
    const/4 v4, 0x1

    return v4

    .line 220
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_f
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 224
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 226
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 227
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onGetHandoverConfig(III)V

    .line 228
    const/4 v4, 0x1

    return v4

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
