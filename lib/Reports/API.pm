# Copyright 2017 Jason Lewis

# This file is part of Sirius Web Reports.

#     Sirius Web Reports is free software: you can redistribute it and/or modify
#     it under the terms of the GNU Affero Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     (at your option) any later version.

#     Sirius Web Reports is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU Affero Public License for more details.

#     You should have received a copy of the GNU Affero Public License
#     along with Sirius Web Reports.  If not, see <http://www.gnu.org/licenses/>.

package Reports::API;

use 5.22.0;
use strict;
use warnings;

use Dancer2;
use Reports::API::AccountsReceivable;
use Reports::API::AccountsReceivable::Customers;
use Reports::API::AccountsReceivable::Debtors;
use Reports::API::AccountsPayable::Supplier;
use Reports::API::Sales;
use Reports::API::Sales::Rolling24;
use Reports::API::Sales::SalesOrder;
use Reports::API::Sales::StockistsBySupplier;
use Reports::API::Purchasing::MultiWarehouseSalesHistory;
use Reports::API::Purchasing::CombinedWarehouseSalesHistory;
use Reports::API::Purchasing::BlueGreen;
use Reports::API::GeneralLedger::Accounts;
# use Dancer2::Plugin::Auth::Extensible;
# use Dancer2::Plugin::DBIC;
set serializer => 'JSON';

1;
