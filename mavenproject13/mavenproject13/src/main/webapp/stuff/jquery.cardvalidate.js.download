/// <reference path="jquery-3.3.1.min.js" />
/// <reference path="jquery-3.3.1.intellisense.js" />
(function ($) {
    $.fn.cardNumberMask = function (bincode) {
        // $var settings = jQuery.extend({}, defaults, options);
        var orgInput = $(this);
        orgInput.attr('type', 'hidden');
        this.attr('type', 'hidden');
        var maskInput = $("<input>", { type: 'text', class: 'form-control', placeholder: orgInput.attr('placeholder'), maxlength: 25, id: "card_number_mask", name: "card_number_mask" });
        maskInput.insertAfter(orgInput);
        var ie_match = /\b(MSIE |Trident.*?rv:|Edge\/)(\d+)/.exec(navigator.userAgent);
            if (ie_match) {
                var testval = $(this).val().toLowerCase();
                if (testval === 'số thẻ'||testval==='card number') {
                    $(this).val('');
                }
            }
        //Mask data
        if (orgInput.val().length && orgInput.val().length > 6) {
            var data = "";
            var postFix = orgInput.val().substr(-4);
            for (i = 0; i < orgInput.val().length - 4; i++) {
                data += "*";
            }
            data += postFix;
            maskInput.val(data);
            
        }
        //event keypress
        maskInput.on("keypress", function (e) {
            //  var cKey = 67, vKey = 86;
            //  console.log(e.which);
            //Shift+Arrow key
            if (e.shiftKey && (e.keyCode === 37 || e.keyCode === 39)) {
                return true;
            }
            //Arrow key
            if (e.keyCode === 37 || e.keyCode === 39) {
                return true;
            }
            if (e.ctrlKey && (e.which === 67 || e.which === 99 || e.which === 86 || e.which === 118)) {
                return true;
            }
            if (e.keyCode === 8 || e.keyCode === 46) {
                return true;
            }
            if (e.which !== 8 && e.which !== 0 && (e.which < 48 || e.which > 57)) {
                return false;
            } else {
                // console.log('keypress' + $(this).val() +'-' + $(this).text());
                return true;
            }
        });
        maskInput.on("input", function (e) {
            var inputText = $(this).val().replace(/\s/g, "");
            $(this).val(inputText);
            orgInput.val(this.value);
          //  $(this).val($(this).val().replace(/\s/g, ""));
           // var cardVal = this.value;
            //if (cardVal.length >= 6) {
            //    var binVal = cardVal.substr(0, 6);
            //    if ($('#bank_logo').length) {
            //        $('#bank_logo').attr('src', logopath + bincode[binVal].toLowerCase() + "_icon.png");
            //    } else {
            //        var logoUrl = logopath + bincode[binVal].toLowerCase() + "_icon.png";
            //        var img = $("<img>", { id: 'bank_logo', src: logoUrl, class: "form-control-feedback" });
            //        img.insertAfter(maskInput);
            //    }
            //} else {
            //    // console.log('input event-remove logo');
            //    if ($('#bank_logo').length) {
            //        $('#bank_logo').remove();
            //    }
            //}

        });
        //event onblur
        maskInput.on("blur", function () {
            if (orgInput.val().length && orgInput.val().length > 10) {
                var data2 = "";
                var postFix2 = orgInput.val().substr(-4);
                for (i = 0; i < orgInput.val().length - 4; i++) {
                    data2 += "*";
                }
                data2 += postFix2;
                maskInput.val(data2);
            }
        });
        //event focus
        maskInput.on("focus", function () {
            maskInput.val(orgInput.val());
        });
    };
})(jQuery);

