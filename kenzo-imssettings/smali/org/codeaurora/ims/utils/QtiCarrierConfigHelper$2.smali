.class Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "QtiCarrierConfigHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$2;->this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    .line 90
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 6

    .prologue
    .line 93
    iget-object v3, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$2;->this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    invoke-static {v3}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->-get3(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 95
    iget-object v3, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$2;->this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    invoke-static {v3}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->-get3(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 96
    .local v2, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_0

    .line 97
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "subInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 98
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Reload carrier configs on sub Id due sub changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 99
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v3, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$2;->this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    invoke-static {v3, v0}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->-wrap0(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;Landroid/telephony/SubscriptionInfo;)V

    goto :goto_0

    .line 104
    .end local v0    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v1    # "subInfo$iterator":Ljava/util/Iterator;
    .end local v2    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_0
    return-void
.end method
