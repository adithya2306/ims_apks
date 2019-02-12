.class public abstract Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;
.super Landroid/os/Binder;
.source "IQtiImsExt.java"

# interfaces
.implements Lorg/codeaurora/ims/internal/IQtiImsExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/internal/IQtiImsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.codeaurora.ims.internal.IQtiImsExt"

.field static final TRANSACTION_getCallForwardUncondTimer:I = 0x2

.field static final TRANSACTION_getHandoverConfig:I = 0xe

.field static final TRANSACTION_getPacketCount:I = 0x3

.field static final TRANSACTION_getPacketErrorCount:I = 0x4

.field static final TRANSACTION_getRcsAppConfig:I = 0x10

.field static final TRANSACTION_getVvmAppConfig:I = 0x12

.field static final TRANSACTION_querySsacStatus:I = 0x9

.field static final TRANSACTION_queryVoltePreference:I = 0xd

.field static final TRANSACTION_queryVopsStatus:I = 0x8

.field static final TRANSACTION_registerForParticipantStatusInfo:I = 0xb

.field static final TRANSACTION_resumePendingCall:I = 0xa

.field static final TRANSACTION_sendCallDeflectRequest:I = 0x5

.field static final TRANSACTION_sendCallTransferRequest:I = 0x6

.field static final TRANSACTION_sendCancelModifyCall:I = 0x7

.field static final TRANSACTION_setCallForwardUncondTimer:I = 0x1

.field static final TRANSACTION_setHandoverConfig:I = 0xf

.field static final TRANSACTION_setRcsAppConfig:I = 0x11

.field static final TRANSACTION_setVvmAppConfig:I = 0x13

.field static final TRANSACTION_updateVoltePreference:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {p0, p0, v0}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExt;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/codeaurora/ims/internal/IQtiImsExt;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lorg/codeaurora/ims/internal/IQtiImsExt;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 274
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 46
    :sswitch_0
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v2, 0x1

    return v2

    .line 51
    :sswitch_1
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 55
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 57
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 59
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 61
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 63
    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 65
    .local v8, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 67
    .local v9, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 69
    .local v10, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 71
    .local v11, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v12

    .local v12, "_arg9":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v2, p0

    .line 72
    invoke-virtual/range {v2 .. v12}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->setCallForwardUncondTimer(IIIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 73
    const/4 v2, 0x1

    return v2

    .line 77
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":I
    .end local v10    # "_arg7":I
    .end local v11    # "_arg8":Ljava/lang/String;
    .end local v12    # "_arg9":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_2
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 83
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 85
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v17

    .line 86
    .local v17, "_arg3":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v4, v5, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getCallForwardUncondTimer(IIILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 87
    const/4 v2, 0x1

    return v2

    .line 91
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v17    # "_arg3":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_3
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 95
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v14

    .line 96
    .local v14, "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getPacketCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 97
    const/4 v2, 0x1

    return v2

    .line 101
    .end local v3    # "_arg0":I
    .end local v14    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_4
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 105
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v14

    .line 106
    .restart local v14    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getPacketErrorCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 107
    const/4 v2, 0x1

    return v2

    .line 111
    .end local v3    # "_arg0":I
    .end local v14    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_5
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 115
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 117
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v16

    .line 118
    .local v16, "_arg2":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v13, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->sendCallDeflectRequest(ILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 119
    const/4 v2, 0x1

    return v2

    .line 123
    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_6
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 127
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 129
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 131
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v17

    .line 132
    .restart local v17    # "_arg3":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v4, v15, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->sendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 133
    const/4 v2, 0x1

    return v2

    .line 137
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_7
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 141
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v14

    .line 142
    .restart local v14    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->sendCancelModifyCall(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 143
    const/4 v2, 0x1

    return v2

    .line 147
    .end local v3    # "_arg0":I
    .end local v14    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_8
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 151
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v14

    .line 152
    .restart local v14    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->queryVopsStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 153
    const/4 v2, 0x1

    return v2

    .line 157
    .end local v3    # "_arg0":I
    .end local v14    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_9
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 161
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v14

    .line 162
    .restart local v14    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->querySsacStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 163
    const/4 v2, 0x1

    return v2

    .line 167
    .end local v3    # "_arg0":I
    .end local v14    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_a
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 171
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 172
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->resumePendingCall(II)V

    .line 173
    const/4 v2, 0x1

    return v2

    .line 177
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_b
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 181
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v14

    .line 182
    .restart local v14    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->registerForParticipantStatusInfo(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 183
    const/4 v2, 0x1

    return v2

    .line 187
    .end local v3    # "_arg0":I
    .end local v14    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_c
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 191
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 193
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v16

    .line 194
    .restart local v16    # "_arg2":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v4, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->updateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 195
    const/4 v2, 0x1

    return v2

    .line 199
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v16    # "_arg2":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_d
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 203
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v14

    .line 204
    .restart local v14    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->queryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 205
    const/4 v2, 0x1

    return v2

    .line 209
    .end local v3    # "_arg0":I
    .end local v14    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_e
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 213
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v14

    .line 214
    .restart local v14    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 215
    const/4 v2, 0x1

    return v2

    .line 219
    .end local v3    # "_arg0":I
    .end local v14    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_f
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 223
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 225
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v16

    .line 226
    .restart local v16    # "_arg2":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v4, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->setHandoverConfig(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 227
    const/4 v2, 0x1

    return v2

    .line 231
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v16    # "_arg2":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_10
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 234
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getRcsAppConfig(I)I

    move-result v18

    .line 235
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v2, 0x1

    return v2

    .line 241
    .end local v3    # "_arg0":I
    .end local v18    # "_result":I
    :sswitch_11
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 245
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 246
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->setRcsAppConfig(II)I

    move-result v18

    .line 247
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    const/4 v2, 0x1

    return v2

    .line 253
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v18    # "_result":I
    :sswitch_12
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 256
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getVvmAppConfig(I)I

    move-result v18

    .line 257
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/4 v2, 0x1

    return v2

    .line 263
    .end local v3    # "_arg0":I
    .end local v18    # "_result":I
    :sswitch_13
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 267
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 268
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->setVvmAppConfig(II)I

    move-result v18

    .line 269
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    const/4 v2, 0x1

    return v2

    .line 42
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
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
