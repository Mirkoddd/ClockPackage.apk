.class Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;
.super Ljava/lang/Object;
.source "WCCities.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCCities;->setCityList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V
    .registers 2
    .parameter

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 16
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v9, 0x7f0b0097

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 1805
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    .line 1807
    .local v2, item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mSelectCity_Country:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$1202(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Ljava/lang/String;)Ljava/lang/String;

    .line 1809
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mSelectCity_Country:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$1200(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    const v5, 0x7f0b009c

    invoke-virtual {v4, v5}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v6, :cond_2a

    .line 1867
    :cond_29
    :goto_29
    return-void

    .line 1815
    :cond_2a
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mSelectCity_Country:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$1200(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1819
    .local v1, divIndex:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_29

    .line 1825
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mSelectCity_Country:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$1200(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 1827
    .local v0, city:Lcom/sec/android/app/clockpackage/worldclock/City;
    if-eqz v0, :cond_29

    .line 1831
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getUniqueID()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->isDuplication(I)Z

    move-result v3

    if-nez v3, :cond_80

    .line 1833
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->saveDB()Z
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$1300(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Z

    move-result v3

    if-nez v3, :cond_73

    .line 1835
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$1400(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    const v5, 0x7f0b0099

    invoke-virtual {v4, v5}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1841
    :cond_73
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    sget v4, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->RESULT_ITEM_INSERTED:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->setResult(I)V

    .line 1843
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->finish()V

    goto :goto_29

    .line 1847
    :cond_80
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$1500(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Landroid/widget/Toast;

    move-result-object v3

    if-nez v3, :cond_b2

    .line 1849
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mSelectCity_Country:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$1200(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v9, v6}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    #setter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mToast:Landroid/widget/Toast;
    invoke-static {v3, v4}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$1502(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1863
    :goto_a7
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$1500(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_29

    .line 1859
    :cond_b2
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$1500(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Landroid/widget/Toast;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$14;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mSelectCity_Country:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$1200(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v9, v5}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a7
.end method
