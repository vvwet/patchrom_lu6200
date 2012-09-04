.class Lcom/broadcom/bt/service/opp/BluetoothOPP$OppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOPP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/opp/BluetoothOPP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/opp/BluetoothOPP;)V
    .locals 0
    .parameter

    .prologue
    .line 821
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 826
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    #getter for: Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    .line 827
    .local v0, handler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    if-nez v0, :cond_1

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppBroadcastReceiver;->abortBroadcast()V

    .line 834
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 835
    .local v8, action:Ljava/lang/String;
    const-string v1, "actionType"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v9

    .line 838
    .local v9, actionType:B
    const/4 v1, 0x1

    if-ne v9, v1, :cond_7

    .line 840
    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPC_OPEN"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v8, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$200(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 842
    invoke-interface {v0}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcOpen()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 922
    .end local v8           #action:Ljava/lang/String;
    .end local v9           #actionType:B
    :catch_0
    move-exception v10

    .line 923
    .local v10, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    const-string v2, "Error processing OPP event "

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 843
    .end local v10           #t:Ljava/lang/Throwable;
    .restart local v8       #action:Ljava/lang/String;
    .restart local v9       #actionType:B
    :cond_2
    :try_start_1
    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPC_ENABLE"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v8, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$300(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 845
    invoke-interface {v0}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcEnable()V

    goto :goto_0

    .line 846
    :cond_3
    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPC_PROGRESS"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v8, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$400(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 848
    const-string v1, "BYTES_TRANSFERRED"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "TOTAL_BYTES"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcProgress(JJ)V

    goto :goto_0

    .line 863
    :cond_4
    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPC_OBJECT_PUSHED"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v8, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$500(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 865
    const-string v1, "STATUS"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    const-string v2, "FILEPATH"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcObjectPushed(ILjava/lang/String;)V

    goto :goto_0

    .line 867
    :cond_5
    const-string v1, "com.broadcom.bt.app.opp.action.ACTION_ON_OPC_OBJECT_PUSHED"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v8, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$600(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 869
    const-string v1, "STATUS"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    const-string v2, "FILEPATH"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcObjectReceived(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 871
    :cond_6
    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPC_CLOSE"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v8, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$700(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    const-string v1, "STATUS"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcClose(I)V

    goto/16 :goto_0

    .line 877
    :cond_7
    const/4 v1, 0x2

    if-ne v9, v1, :cond_b

    .line 879
    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    sget v2, Lcom/broadcom/bt/service/framework/BluetoothIntent;->BT_ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v8, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$800(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 881
    const-string v1, "RMT_DEV_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RMT_DEV_ADDR"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPERATION"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v3

    const-string v4, "broadcom.android.bluetooth.intent.FILE_FORMAT"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v4

    const-string v5, "FILEPATH"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TOTAL_BYTES"

    const-wide/16 v11, 0x0

    invoke-virtual {p2, v6, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-interface/range {v0 .. v7}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)V

    goto/16 :goto_0

    .line 889
    :cond_8
    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPS_PROGRESS"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v8, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$900(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 891
    const-string v1, "BYTES_TRANSFERRED"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "TOTAL_BYTES"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsProgress(JJ)V

    goto/16 :goto_0

    .line 894
    :cond_9
    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPS_OBJECT_RECEIVED"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v8, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$1000(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 896
    const-string v1, "broadcom.android.bluetooth.intent.FILE_FORMAT"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    const-string v2, "FILEPATH"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsObjectReceived(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 910
    :cond_a
    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPS_CLOSE"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v8, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$1100(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    invoke-interface {v0}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsClose()V

    goto/16 :goto_0

    .line 914
    :cond_b
    const/4 v1, 0x3

    if-ne v9, v1, :cond_0

    .line 916
    const-string v1, "com.broadcom.bt.app.opp.action.ON_OP_OWNER_VCARD_NOT_SET"

    const/16 v2, 0x1f

    #calls: Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v8, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$1200(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    const-string v1, "FILEPATH"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpOwnerVcardNotSet(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
