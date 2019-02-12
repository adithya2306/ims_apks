.class Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$1;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$1;->this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    .line 62
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 65
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 66
    const-string/jumbo v4, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    const-string/jumbo v3, "subscription"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 69
    .local v1, "subId":I
    iget-object v3, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$1;->this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    invoke-static {v3}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->-get3(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 70
    iget-object v3, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$1;->this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    invoke-static {v3}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->-get3(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 72
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_1

    .line 73
    invoke-static {}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Reload carrier configs on sub Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v3, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$1;->this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    invoke-static {v3, v2}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->-wrap0(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;Landroid/telephony/SubscriptionInfo;)V

    .line 86
    .end local v1    # "subId":I
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local v1    # "subId":I
    .restart local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const-string/jumbo v3, "phone"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 78
    .local v0, "phoneId":I
    iget-object v3, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$1;->this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    invoke-static {v3}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->-get1(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)Landroid/telephony/CarrierConfigManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$1;->this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    invoke-static {v3}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->-get1(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)Landroid/telephony/CarrierConfigManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    if-nez v3, :cond_0

    .line 80
    iget-object v3, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$1;->this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    invoke-static {v3}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->-get2(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Clear carrier configs on phone Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
