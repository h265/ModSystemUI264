.class Lcom/sonymobile/systemui/qs/DragDropLayout$6;
.super Ljava/lang/Object;
.source "DragDropLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/qs/DragDropLayout;->updateDropRegion(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

.field final synthetic val$qsid:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/qs/DragDropLayout;Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$6;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    iput-object p2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$6;->val$qsid:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 610
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$6;->val$qsid:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getIndex()I

    move-result v0

    .line 611
    .local v0, "index":I
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$6;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # invokes: Lcom/sonymobile/systemui/qs/DragDropLayout;->removeDropRegions()V
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$2000(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    .line 612
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$6;->val$qsid:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getStatus()Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->USED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    if-ne v1, v2, :cond_0

    .line 613
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$6;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$600(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$6;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;
    invoke-static {v2}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$400(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/systemui/qs/QSEditPanel;->addView(Landroid/view/View;I)V

    .line 617
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$6;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # invokes: Lcom/sonymobile/systemui/qs/DragDropLayout;->updateTilesIndices()V
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1000(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    .line 618
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$6;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$600(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->requestLayout()V

    .line 619
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$6;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$800(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 620
    return-void

    .line 615
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$6;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$800(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$6;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;
    invoke-static {v2}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$700(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method
