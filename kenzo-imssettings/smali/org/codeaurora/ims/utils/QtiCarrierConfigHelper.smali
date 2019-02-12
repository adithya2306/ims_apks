.class public Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;
.super Ljava/lang/Object;
.source "QtiCarrierConfigHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$1;,
        Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$2;,
        Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$SingletonHolder;
    }
.end annotation


# static fields
.field private static PHONE_COUNT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mConfigsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)Landroid/telephony/CarrierConfigManager;
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    return-object v0
.end method

.method static synthetic -get2(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)Ljava/util/Map;
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mConfigsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get3(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;Landroid/telephony/SubscriptionInfo;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;
    .param p1, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->loadConfigsForSubInfo(Landroid/telephony/SubscriptionInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->TAG:Ljava/lang/String;

    .line 51
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->PHONE_COUNT:I

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mConfigsMap:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    new-instance v0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$1;-><init>(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    new-instance v0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$2;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$2;-><init>(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)V

    .line 89
    iput-object v0, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)V
    .locals 0
    .param p1, "-this0"    # Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    .prologue
    invoke-direct {p0}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$SingletonHolder;->sInstance:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    return-object v0
.end method

.method private loadConfigsForSubInfo(Landroid/telephony/SubscriptionInfo;)V
    .locals 5
    .param p1, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    const/4 v4, 0x0

    .line 152
    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 154
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 153
    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 155
    .local v0, "pb":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_1

    .line 156
    sget-object v1, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Load carrier configs on sub Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 157
    const-string/jumbo v3, " slot Id: "

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 157
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mConfigsMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .end local v0    # "pb":Landroid/os/PersistableBundle;
    :cond_0
    :goto_0
    return-void

    .line 160
    .restart local v0    # "pb":Landroid/os/PersistableBundle;
    :cond_1
    sget-object v1, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No configs on sub Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mConfigsMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private sanityCheckConfigsLoaded(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .prologue
    .line 167
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->setup(Landroid/content/Context;)V

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method public getBoolean(ILjava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 191
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    sget-object v1, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid phone ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return v4

    .line 195
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mConfigsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 196
    .local v0, "pb":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0, p2, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 199
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 200
    sget-object v1, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WARNING, Don\'t set up yet."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return v4

    .line 203
    :cond_2
    sget-object v1, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WARNING, no carrier configs on phone Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return v4
.end method

.method public getBoolean(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 177
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    sget-object v1, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid phone ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return v4

    .line 181
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->sanityCheckConfigsLoaded(Landroid/content/Context;I)V

    .line 182
    iget-object v1, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mConfigsMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 183
    .local v0, "pb":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0, p3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 186
    :cond_1
    sget-object v1, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WARNING, no carrier configs on phone Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return v4
.end method

.method public isValidPhoneId(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 173
    if-ltz p1, :cond_0

    sget v1, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->PHONE_COUNT:I

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setup(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mContext:Landroid/content/Context;

    .line 119
    iget-object v4, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_2

    .line 120
    iget-object v4, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 121
    iget-object v4, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    iput-object v4, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 122
    iget-object v4, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mContext:Landroid/content/Context;

    .line 123
    const-string/jumbo v5, "carrier_config"

    .line 122
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    iput-object v4, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 125
    iget-object v4, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 127
    .local v3, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 128
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "subInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 129
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->loadConfigsForSubInfo(Landroid/telephony/SubscriptionInfo;)V

    goto :goto_0

    .line 132
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    iget-object v4, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v5, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 137
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_2
    return-void
.end method

.method public teardown()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mConfigsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 141
    iget-object v0, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    iget-object v0, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    iget-object v0, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 146
    iget-object v1, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 145
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 149
    :cond_0
    return-void
.end method
