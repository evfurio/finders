# == Overview
# This class houses and provides finders for the fraud queue list.
# == Usage
#  list_item = @browser.fraud_queue_list.at(0)
#  list_item = @browser.fraud_queue_list.find("2196460")
class ImpulseFraudQueueList < CommonComponent
    # Initializes variables.
    # === Parameters:
    # _tag_:: ToolTag of current tag
    # _browser_:: browser that created the tag.
    def initialize(tag, browser)
        super(tag, browser)
        @item_h = create_hash(tag)
    end

    # Returns the number of items in the list.
    def length()
        return @item_h.length
    end

    # Returns the order item at the specified index from the list. The item
    # is returned as an ImpulseFraudQueueItem; see it's documentation
    # for additional usage examples.
    # === Parameters:
    # _index_:: zero-based index of the order item to be retrieved from the list.
    def at(index)
        $tracer.trace("\tAction: #{__method__}(#{index})")
        return ImpulseFraudQueueItem.new(ToolTag.new(@tag.find.a.id("/OrderID$/").at(index).parent("tr"), format_method(__method__), @browser), @browser)
    end

    # Returns the item seached for, given a particular key, ie. inner text of item -- must be exact.
    # === Parameters:
    # _key_:: inner text of item to be searched for - must be exact
    def find(key)
        $tracer.trace("\tAction: #{__method__}(\"#{key}\")")
        item = find_key(key)
        if item.nil?
            raise Exception.new("key, #{key} not found in list")
        end

        return item
    end

    # Returns boolean, true if not found, given a particular key, ie. inner text of item -- must be exact.
    # === Parameters:
    # _key_:: inner text of item to be searched for - must be exact
    def should_not_find(key)
        $tracer.trace("\tAction: #{__method__}(\"#{key}\")")
        item = find_key(key)
        if item.nil?
          return true
        end

        return false
    end

    private

    # Returns the item seached for, given a particular key, ie. inner text of item -- must be exact.
    # === Parameters:
    # _key_:: inner text of item to be searched for - must be exact
    def find_key(key)
        if @item_h.has_key?(key)
            #return ToolTag.new(@tag.find.a.id("/OrderID$/").at(@item_h[key].to_i).parent("tr"), format_method(__method__))
            return self.at(@item_h[key].to_i)
        else
            # not finding the order is valid, return nil
            return nil
        end
    end

    # Returns a hash list with the key being the item order id.
    # === Parameters:
    # _tag_:: tag used to determine hash table
    def create_hash(tag)
        hash = {}
        if tag.exists
            list = tag.find.a.id("/OrderID$/")
            for i in 0...list.length
                hash[list[i].innerText.strip] = i
            end
        end

        return hash
    end
end

# == Overview
# This class houses and provides finders for the fraud queue item.
# == Usage
#  @browser.fraud_queue_list.at(0).key
#  list_item = @browser.fraud_queue_list.find("2196461")
#  list_item.order_id_link.click
class ImpulseFraudQueueItem < CommonComponent

    # Returns key value for use with ImpulseFraudQueueItem#find.
    def key
        $tracer.trace(format_method(__method__))
        return @tag.find.a.id("/OrderID$/").innerText
    end

    # Returns 'Order ID' link.
    def order_id_link
        $tracer.trace(format_method(__method__))
        return ToolTag.new(@tag.find.a.id("/OrderID$/"), format_method(__method__), @browser)
    end

    # Returns the string of criteria used.
    def criteria_used
      $tracer.trace(format_method(__method__))
      @tag.span.id("/CriteriaUsed$/").title
    end

    # Returns 'Mark as Fraud' link (admin).
    def mark_as_fraud_link
      # unit_test_no_generate: mark_as_fraud_link, @tag.find.td.at(4).find.a.id("/_MarkAsFraud$/")
      $tracer.trace(format_method(__method__))
      # NOTE: hardcoded index of 4. No tag to distinquish.
      return ToolTag.new(@tag.find.td.at(4).find.a.id("/_MarkAsFraud$/"), format_method(__method__), @browser)
    end

end

# == Overview
# This class houses and provides finders for the fraud order history list.
# == Usage
#  list_item = @browser.fraud_order_history_list.at(0)
#  list_item = @browser.fraud_order_history_list.find("2196460")
class ImpulseFraudOrderHistoryList < CommonComponent
    # Initializes variables.
    # === Parameters:
    # _tag_:: ToolTag of current tag
    def initialize(tag)
        super(tag)
        @item_h = create_hash(tag)
    end

    # Returns the number of items in the list.
    def length()
        return @item_h.length
    end

    # Returns the order item at the specified index from the list. The item
    # is returned as an ImpulseFraudOrderHistoryItem; see it's documentation
    # for additional usage examples.
    # === Parameters:
    # _index_:: zero-based index of the order to be retrieved from the list.
    def at(index)
        $tracer.trace("\tAction: #{__method__}(#{index})")
        return ImpulseFraudOrderHistoryItem.new(ToolTag.new(@tag.find.a.id("/OrderID$/").at(index).parent("tr"), format_method(__method__), @browser), @browser)
    end

    # Returns the item seached for, given a particular key, ie. inner text of item -- must be exact.
    # === Parameters:
    # _key_:: inner text of item to be searched for - must be exact
    def find(key)
        $tracer.trace("\tAction: #{__method__}(\"#{key}\")")
        item = find_key(key)
        if item.nil?
            raise Exception.new("key, #{key} not found in list")
        end

        return item
    end

    # Returns boolean, true if not found, given a particular key, ie. inner text of item -- must be exact.
    # === Parameters:
    # _key_:: inner text of item to be searched for - must be exact
    def should_not_find(key)
        $tracer.trace("\tAction: #{__method__}(\"#{key}\")")
        item = find_key(key)
        if item.nil?
          return true
        end

        return false
    end

    private

    # Returns the item seached for, given a particular key, ie. inner text of item -- must be exact.
    # === Parameters:
    # _key_:: inner text of item to be searched for - must be exact
    def find_key(key)
        if @item_h.has_key?(key)
            return self.at(@item_h[key].to_i)
        else
            # not finding the order is valid, return nil
            return nil
        end
    end

    # Returns a hash list with the key being the menu item name.
    # === Parameters:
    # _tag_:: tag used to determine hash table
    def create_hash(tag)
        hash = {}
        if tag.exists
            list = tag.find.a.id("/OrderID$/")
            for i in 0...list.length
                hash[list[i].innerText.strip] = i
            end
        end

        return hash
    end
end

# == Overview
# This class houses and provides finders for the fraud queue item.
# == Usage
#  @browser.fraud_order_history_list.at(0).key
#  list_item = @browser.fraud_order_history_list.find("2196461")
#  list_item.order_id_link.click
#  status = list_item.processed_label.innerText
class ImpulseFraudOrderHistoryItem < CommonComponent

    # Returns key value for use with ImpulseFraudOrderHistoryItem#find.
    def key
        $tracer.trace(format_method(__method__))
        return @tag.find.a.id("/OrderID$/").innerText
    end

    # Returns 'Order ID' link.
    def order_id_link
        $tracer.trace(format_method(__method__))
        return ToolTag.new(@tag.find.a.id("/OrderID$/"), format_method(__method__), @browser)
    end

    # Returns 'Processed' label.
    def processed_label
        $tracer.trace(format_method(__method__))

        # NOTE: hardcoded index of 5. No tag to distinquish.
        return ToolTag.new(@tag.find.td.at(5), format_method(__method__), @browser)
    end
end
